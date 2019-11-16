import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {RouterModule, Route} from '@angular/router'
import { AppRoutingModule } from './app-routing.module';
import { HttpClientModule } from '@angular/common/http';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { FormsModule } from '@angular/forms';

import { AppComponent } from './app.component';
import { LoginComponent } from './login/login.component';
import {UsuarioService} from './servicios/usuario.service';
import { PrincipalComponent } from './principal/principal.component';
import { HomeComponent } from './home/home.component';
import { ConsultarAlquilerComponent } from './Alquiler/consultar-alquiler/consultar-alquiler.component';
import { CotizarAlquilerComponent } from './Alquiler/cotizar-alquiler/cotizar-alquiler.component';
import { DespacharAlquilerComponent } from './Alquiler/despachar-alquiler/despachar-alquiler.component';
import { DevolverAlquilerComponent } from './Alquiler/devolver-alquiler/devolver-alquiler.component';
import { LiquidarAlquilerComponent } from './Alquiler/liquidar-alquiler/liquidar-alquiler.component';
import { ConsultarClienteComponent } from './Clientes/consultar-cliente/consultar-cliente.component';
import { SucursalesComponent } from './Clientes/sucursales/sucursales.component';
import { ContactosComponent } from './Clientes/contactos/contactos.component';
import { SerializadosComponent } from './Inventario/serializados/serializados.component';
import { NoSerializadosComponent } from './Inventario/no-serializados/no-serializados.component';
import { BodegasComponent } from './Inventario/bodegas/bodegas.component';
import { AdministracionComponent } from './Inventario/administracion/administracion.component';
import { SedesComponent } from './Inventario/sedes/sedes.component'

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    PrincipalComponent,
    HomeComponent,
    ConsultarAlquilerComponent,
    CotizarAlquilerComponent,
    DespacharAlquilerComponent,
    DevolverAlquilerComponent,
    LiquidarAlquilerComponent,
    ConsultarClienteComponent,
    SucursalesComponent,
    ContactosComponent,
    SerializadosComponent,
    NoSerializadosComponent,
    BodegasComponent,
    AdministracionComponent,
    SedesComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    HttpClientModule,
    FormsModule
 
  ],
  providers: [
    UsuarioService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
