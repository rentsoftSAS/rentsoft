import { Component, OnInit } from '@angular/core';
import {UsuarioService} from '../servicios/Usuario/usuario.service';
import {LoginService} from '../servicios/Usuario/login.service'
import { Router } from '@angular/router';
import * as CryptoJS from 'crypto-js';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent{
 constructor (private usuario: UsuarioService, private router: Router, private login :LoginService){
 
 }
  mensaje: string =""
  Ingresar(tbxusuario,tbxpassword,dvvalidaUsuario){        
  
    let encriptado = btoa(tbxpassword.value.trim())
   this.login.Loggearse(tbxusuario.value,encriptado).subscribe(data =>{    
    if(data.error != undefined || data.length == 0){      
      dvvalidaUsuario.innerHTML= data.error;
      dvvalidaUsuario.style.display ="block"  
      
    }else{      
      localStorage.setItem('jwt', data.jwt);       
      this.router.navigateByUrl("/principal")      
    }
   
   })   
    
    return false;
  }
  ngOnInit() {
    const token = localStorage.getItem('jwt');
    if (token){
      this.router.navigate(['/principal']);     
    }
  }

}
