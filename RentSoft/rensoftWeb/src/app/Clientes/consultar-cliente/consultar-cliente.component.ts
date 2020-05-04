import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { ModalModule, BsModalRef } from 'ngx-bootstrap/modal';
import { BsModalService } from 'ngx-bootstrap/modal';
import{PopupComponent} from '../../Modal/popup/popup.component'
import {CrearComponent} from '../formularios/crear/crear.component'
import { MensajeInformativoComponent } from 'src/app/Modal/mensaje-informativo/mensaje-informativo.component';
@Component({
  selector: 'app-consultar-cliente',
  templateUrl: './consultar-cliente.component.html',
  styleUrls: ['./consultar-cliente.component.css']
})
export class ConsultarClienteComponent implements OnInit {
  visible:boolean = false
  modalRef: BsModalRef;
  constructor(private modalService: BsModalService) { }

  ngOnInit() {
   
  }

CrearClienteClick(){
  this.visible = true
}
RegresarCrearClienteClick(){
  this.visible = false
}
CrearClienteClickpopup(){ 
  const initialState = {
    NombreComponente:'app-crear-cliente',  
  };
  this.modalRef = this.modalService.show(PopupComponent,{initialState});
}
mensajeInformativo(){
  const initialState = {
    mensaje:'se guardo el contacto correctamente',  
  };
  this.modalRef = this.modalService.show(MensajeInformativoComponent,{initialState});
}
}