import json
class Utilitario:
    def Serializar(datos,encabezados):
         CadenaJson=[]
         for x in datos:
            CadenaJson.append(dict(zip(encabezados,datos)))            
            pass
         return json.dumps(CadenaJson)


