import { Component, OnInit } from '@angular/core';
@Component({
  selector: 'app-consultar-cliente',
  templateUrl: './consultar-cliente.component.html',
  styleUrls: ['./consultar-cliente.component.css']
})
export class ConsultarClienteComponent implements OnInit {
  visible:boolean = false
  constructor() { }

  ngOnInit() {
   
  }

CrearClienteClick(){
  this.visible = true
}
RegresarCrearClienteClick(){
  this.visible = false
}

}
