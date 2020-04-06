from Modelos.Usuariodto import Usuariodto
import json
from Negocio.UtilitarioBD import UtilitarioBD
import configparser

class Varios:
    def ObtenerTiposDocumento():
        query = "select id, Tipodocumento from tipodocumento"  
        stringjson = UtilitarioBD.ConsultaBD(query)      
        return stringjson

