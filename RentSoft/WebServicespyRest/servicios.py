from flask import Flask, request
from Negocio.Usuario import Usuario
from flask_cors import CORS
import json
app = Flask(__name__)
CORS(app)

@app.route("/usuarios",methods = ['POST'])
def usuarios():
    credenciales = request.get_json(force=True)
   # credenciales = json.loads(request.get_json(force=True) )
    usuario = credenciales["usuario"]
    clave = credenciales["clave"]
    objeto = Usuario.ObtenerUsuario(usuario,clave)
    return   objeto
  
if __name__ == "__main__":
 app.run(debug=True)