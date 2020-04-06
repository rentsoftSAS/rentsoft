import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators, AbstractControl, ValidationErrors } from '@angular/forms';
import {GetTipoDocumentoService} from '../../../servicios/Varios/get-tipo-documento.service'
import {NumericoDirective} from '../../../Directivas/numerico.directive'
import { isError } from 'util';
import {validaDrop,validaCorreo} from '../../../Validadores/Validadores'
@Component({
  selector: 'app-crear-cliente',
  templateUrl: './crear.component.html',
  styleUrls: ['./crear.component.css']
})
export class CrearComponent implements OnInit {

  constructor(private formbuilder: FormBuilder,private tiposDocumento: GetTipoDocumentoService) { }
   ListatiposDocumento:any[] = [];
   lbltipodocumento:string = 'Número de documento'
   lblNombreCliente:string ="Nombre Cliente"
   selTipoDoc:string= '0'
   sGuardado:boolean = false
   snEmpresa:boolean =false 
    formCrearCliente = this.formbuilder.group({
    TipoDocumento:['0',validaDrop],
    NombreCliente:['',Validators.required],
    ApellidoCliente:['',Validators.required],
    DireccionCliente:['',Validators.required],
    CorreoCliente:['',validaCorreo],    
    NumeroDocumento:['',Validators.required]
  })
  
  ngOnInit() { 
    let lstorageDocumentos = localStorage.getItem("tiposDocumento");       
    if (lstorageDocumentos == undefined){
   this.CargarTiposDocumento()  
  }else{
    this.ListatiposDocumento = JSON.parse(lstorageDocumentos)
  }
  }
  guardar(){
    if (this.formCrearCliente.invalid){
      let invalidos:any[];
      const controles = this.formCrearCliente.controls
        for(let nom in controles){
        let control =this.formCrearCliente.get(nom)
          if (control.invalid){
            control.markAsTouched();
          }
      }
    
  }else{
    console.log(this.formCrearCliente.value);
  }
}

  CargarTiposDocumento(){
    this.tiposDocumento.GetTipoDocumento().subscribe(data =>{
     this.ListatiposDocumento = data     
     localStorage.setItem("tiposDocumento", JSON.stringify(data))
  })

}
ddlTipodocumentoCg(){
  let tipodoc = this.formCrearCliente.value.TipoDocumento
  console.log(this.formCrearCliente.get('TipoDocumento').valid);
 if(tipodoc =='2'){
  this.lbltipodocumento ="Ingrese el NIT de la empresa sin número de verificación"
  this.lblNombreCliente = "Nombre de la empresa"
  this.snEmpresa = true
 }else{
  this.lbltipodocumento  = 'Número de documento'
  this.lblNombreCliente ="Nombre Cliente"
  this.snEmpresa = false
 }
}

}
