import { Component, OnInit } from '@angular/core';
import { FormBuilder } from '@angular/forms';

@Component({
  selector: 'app-crear',
  templateUrl: './crear.component.html',
  styleUrls: ['./crear.component.css']
})
export class CrearComponent implements OnInit {

  constructor(private formbuilder: FormBuilder) { }
  
  formCrearCliente = this.formbuilder.group({
    nbusuario:['']
  })
  
  ngOnInit() {

  }
  guardar(){
    console.log(this.formCrearCliente.value);
  }

}
