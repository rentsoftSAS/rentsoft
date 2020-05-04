import { Component, OnInit, ViewChild, ViewContainerRef, ComponentFactoryResolver} from '@angular/core';
import { BsModalRef } from 'ngx-bootstrap/modal';
import { JsonpClientBackend } from '@angular/common/http';
//import { ComunicacionService } from 'src/app/servicios/Varios/comunicacion.service';
import { BsModalService } from 'ngx-bootstrap/modal';

@Component({
  selector: 'app-popup',
  templateUrl: './popup.component.html',
  styleUrls: ['./popup.component.css']
})
export class PopupComponent implements OnInit { 
  @ViewChild('tagrender',{static: false}) tagrender;
  ComponenteMostrar:string; 
  componente: any;   
  constructor(private referenciamodal: BsModalRef,private serviciomodal: BsModalService,private componentFactoryResolver: ComponentFactoryResolver) { }
  
  ngOnInit() {  
    console.log(this.serviciomodal);
    this.componente = this.serviciomodal.config.initialState 
    this.ComponenteMostrar = this.componente.NombreComponente
  }


clickCerrar(){
  this.referenciamodal.hide(); 
}
BolMostrar(nomComponente:string):boolean{
  if    (nomComponente == this.ComponenteMostrar){
    return true;
  }else{
    return false;
  }
  
  }

}


//let componentFactory = this.componentFactoryResolver.resolveComponentFactory(miComponent);
//let viewContainerRef = this.receptor.viewContainerRef;
//viewContainerRef.clear();
//viewContainerRef.createComponent(componentFactory);
