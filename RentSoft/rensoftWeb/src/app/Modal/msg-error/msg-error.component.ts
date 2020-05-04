import { Component, OnInit } from '@angular/core';
import { BsModalService, BsModalRef } from 'ngx-bootstrap/modal';

@Component({
  selector: 'app-msg-error',
  templateUrl: './msg-error.component.html',
  styleUrls: ['./msg-error.component.css']
})
export class MsgErrorComponent implements OnInit {
  constructor(private serviciomodal :  BsModalService,private modalRef: BsModalRef) { }
 mensaje:string;
  ngOnInit() {
    
  }
  clickCerrar(){
    this.modalRef.hide();

  }

}
