import { Component, OnInit } from '@angular/core';
import { BsModalService, BsModalRef } from 'ngx-bootstrap/modal';

@Component({
  selector: 'app-mensaje-informativo',
  templateUrl: './mensaje-informativo.component.html',
  styleUrls: ['./mensaje-informativo.component.css']
})
export class MensajeInformativoComponent implements OnInit { 
  
  constructor(private serviciomodal :  BsModalService,private modalRef: BsModalRef) { }
  mensaje:string;
  ngOnInit() {
    
    
  }
  clickCerrar(){
    this.modalRef.hide();

  }

}
