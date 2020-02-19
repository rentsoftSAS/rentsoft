import json
import configparser
from mysql.connector import Error
import  mysql.connector
from Crypto.Cipher import AES
import base64
from Crypto import Random
class UtilitarioBD: 

    def Serializar(cursor):
         r = [dict((cursor.description[i][0], value) \
               for i, value in enumerate(row)) for row in cursor.fetchall()] 
         return json.dumps(r)
    
    def ConsultaBD(consulta):
        try:

           config = configparser.ConfigParser()
           config.read('config.ini')
           host = config['DEFAULT']['DB_HOST']
           database_name = config['DEFAULT']['DB_NAME']
           usuario = config['DEFAULT']['DB_USER']
           passw = config['DEFAULT']['DB_PASSWORD']
           connection = mysql.connector.connect(host= host, database = database_name, user=usuario, password=passw)
           cursor = connection.cursor()
           cursor.execute(consulta) 
           stringjson = UtilitarioBD.Serializar(cursor)          
           cursor.close()
           connection.close()  
        except Exception as e:        
            data = {}
            data['error'] = 'error al conectarse a la base de datos' + str(e)
            return json.dumps(data)
       
        return stringjson
