import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators, AbstractControl, ValidationErrors } from '@angular/forms';
import {GetTipoDocumentoService} from '../../../servicios/Varios/get-tipo-documento.service'
import {NumericoDirective} from '../../../Directivas/numerico.directive'
import { isError } from 'util';
import {validaDrop,validaCorreo} from '../../../Validadores/Validadores'
import { MensajeInformativoComponent } from 'src/app/Modal/mensaje-informativo/mensaje-informativo.component';
import { BsModalService, BsModalRef } from 'ngx-bootstrap/modal';
import { MsgErrorComponent } from 'src/app/Modal/msg-error/msg-error.component';

@Component({
  selector: 'app-crear-cliente',
  templateUrl: './crear.component.html',
  styleUrls: ['./crear.component.css']
})
export class CrearComponent implements OnInit {
 
  constructor(private formbuilder: FormBuilder,private tiposDocumento: GetTipoDocumentoService,private serviciomodal:BsModalService) { }
  referenciamodal:BsModalRef;
  ListatiposDocumento:any[] = [];
   lbltipodocumento:string = 'Número de documento'
   lblNombreCliente:string ="Nombre Cliente"
   selTipoDoc:string= '0'
   snGuardado:boolean = false
   snEmpresa:boolean =false 
    formCrearCliente = this.formbuilder.group({
    TipoDocumento:['0',validaDrop],
    NombreCliente:['',Validators.required],
    ApellidoCliente:['',Validators.required],
    DireccionCliente:['',Validators.required],
    CorreoCliente:['',validaCorreo],    
    NumeroDocumento:['',Validators.required,Validators.minLength(5)]
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
            console.log(control);
            control.markAsTouched();
          }
      }
      const initialState = {
        mensaje:'Porfavor llenar correctamente el formulario',  
      };
      this.referenciamodal = this.serviciomodal.show(MsgErrorComponent,{initialState});
  }else{
    const initialState = {
      mensaje:'Se creó el cliente correctamente',  
    };
    this.referenciamodal = this.serviciomodal.show(MensajeInformativoComponent,{initialState});
  
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
