import { AbstractControl } from '@angular/forms';

export function validaDrop(control:AbstractControl) {     
    if(control.value == '0'){ 
      return{isError : true};
    }
      else{
        return null;
      }   
  
  }

  export function validaCorreo(control: AbstractControl){   
    let ret:boolean = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.([a-zA-Z]{2,4})+$/.test(control.value) 
    if (ret){
      return null;   
     }  else{
      return { isError : true}; 
      }
    
 }