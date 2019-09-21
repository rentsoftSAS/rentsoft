
import json
from wgsiref.simple_server import make_server
def application(environ,start_response):
    headers  =[('Conten-type','application/json')]

    start_response('200 OK', headers)

    respuesta ={
     'holaaa' :'desde el servidor'

    }

    return [json.drumps(respuesta)]
servidor  = make_server('localhost','1122',application)
servidor.handle_request()
