import { Injectable } from '@angular/core';
import { HttpClient} from '@angular/common/http';
import {usuario} from '../Interfaces/usuario'
import { environment } from 'src/environments/environment';
@Injectable({
  providedIn: 'root'
})
export class UsuarioService {

  constructor(protected http: HttpClient) { }

  GetUsuario(usuario,password){
   let usuariojson: string =  '{"usuario":"'+ usuario +'", "clave":"'+ password +'"}' 
   return this.http.post<usuario[]>( environment.urlServicio +"/usuario",usuariojson)
  }

}
