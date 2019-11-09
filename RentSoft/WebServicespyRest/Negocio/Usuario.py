import  mysql.connector
from Modelos.Usuariodto import Usuariodto
from mysql.connector import Error
import json
from Negocio.Utilitario import Utilitario
class Usuario:
         
    
    def ObtenerUsuario(usuario,clave):
        connection = mysql.connector.connect(host='localhost', database='rentsoftbd', user='root', password='root')
        query = "select Usuario,Apellido from v_usuario where Usuario = '{0}' and Clave = '{1}'".format(usuario,clave)
     
        usr = Usuariodto()   
        print (usr)
        cursor = connection.cursor()
        cursor.execute(query)        
        row_headers=[x[0] for x in cursor.description]
        resultado = cursor.fetchall()
        stringjson = Utilitario.Serializar(resultado,row_headers)
        cursor.close()
        connection.close()      
        return stringjson
    
     
     


   


