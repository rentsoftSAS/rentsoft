from Modelos.Usuariodto import Usuariodto
import json
from Negocio.UtilitarioBD import UtilitarioBD
import configparser

class Usuario:
         
    
    def ObtenerUsuario(usuario):
           query = "select id, Usuario,Apellido,Clave from v_usuario where Usuario = '{0}'".format(usuario)     
           stringjson = UtilitarioBD.ConsultaBD(query)      
           return stringjson
    
     
     


   


