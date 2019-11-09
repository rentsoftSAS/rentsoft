import { Injectable } from '@angular/core';
import { HttpClient} from '@angular/common/http';
import {usuario} from '../Interfaces/usuario'
@Injectable({
  providedIn: 'root'
})
export class UsuarioService {

  constructor(protected http: HttpClient) { }

  GetUsuario(usuario,password){
   let usuariojson: string =  '{"usuario":"'+ usuario +'", "clave":"'+ password +'"}' 
   return this.http.post<usuario[]>("http://127.0.0.1:5000/usuario",usuariojson)
  }

}
