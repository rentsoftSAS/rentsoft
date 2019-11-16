import { Component, OnInit } from '@angular/core';
import { Alert } from 'selenium-webdriver';

@Component({
  selector: 'app-consultar-alquiler',
  templateUrl: './consultar-alquiler.component.html',
  styleUrls: ['./consultar-alquiler.component.css']
})
export class ConsultarAlquilerComponent implements OnInit {
   strBuscar:string =""
  constructor() { }

  ngOnInit() {
  }

 BuscarAlquiler(){
 console.log("asss");
 }

}
