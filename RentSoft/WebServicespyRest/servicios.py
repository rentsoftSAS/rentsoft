from flask import Flask, request
from Negocio.Usuario import Usuario
from Negocio.Varios import Varios
from flask_cors import CORS
import json
import jwt
import datetime
from functools import wraps
from Negocio.UtilitarioBD import UtilitarioBD
from Negocio.Seguridad import Seguridad

app = Flask(__name__)
app.config['SECRET_KEY'] = 'R3nts0ft'
CORS(app)


@app.route("/usuarios",methods = ['POST'])
def usuarios():
    credenciales = request.get_json(force=True)
   # credenciales = json.loads(request.get_json(force=True) )
    usuario = credenciales["usuario"]
    clave = credenciales["clave"]
    objeto = Usuario.ObtenerUsuario(usuario,clave)
    return   objeto

@app.route("/login",methods = ['POST'])
def login():
    credenciales = request.get_json(force=True)
    usuario = credenciales["usuario"]
    clave = credenciales["clave"]
   # auth = request.authorization
    objeto = Usuario.ObtenerUsuario(usuario)
    if 'error' in objeto :        
        return objeto    
    else:
         ob =  json.loads(objeto)
         if len(ob) > 0 :
           if ob[0]["clave"] !=clave :
              data = {}
              data['error'] = 'Contraseña no válida'
              ret = json.dumps(data)
              return  ret
           token = jwt.encode({'user':str(ob[0]['id'])},app.config['SECRET_KEY'])
           data = {}
           data['jwt'] = str(token)
           ret = json.dumps(data)
           return  ret   
         else:
            data = {}
            data['error'] = 'Usuario y/o contraseña no válidos'
            ret = json.dumps(data)
            return  ret  
            

@app.route("/alquileres",methods = ['POST'])
def alquileres():
    filtro = credenciales["filtro"]

@app.route("/GetTiposDocumento",methods = ['GET'])
def GetTiposDocumento():
    respuesta = Varios.ObtenerTiposDocumento()
    return respuesta


if __name__ == "__main__":
 app.run(debug=True)