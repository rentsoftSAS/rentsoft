import { Component, OnInit } from '@angular/core';
import {UsuarioService} from '../usuario.service';
import { Router } from '@angular/router';
@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent{
 constructor (private usuario: UsuarioService, private router: Router){
 
 }

  Ingresar(tbxusuario,tbxpassword,dvvalidaUsuario){  
  
   this.usuario.GetUsuario(tbxusuario.value,tbxpassword.value).subscribe(data =>{
    if(data === undefined || data.length == 0){      
      dvvalidaUsuario.innerHTML= "Usuario no valido intente nuevamente";
      dvvalidaUsuario.style.display ="block"     
    }else{
      
      this.router.navigateByUrl("/principal")
      
    }
   
   })   
    
    return false;
  }

}
