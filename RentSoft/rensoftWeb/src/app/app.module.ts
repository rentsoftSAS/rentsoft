import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {RouterModule, Route} from '@angular/router'
import { AppRoutingModule } from './app-routing.module';
import { HttpClientModule } from '@angular/common/http';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { FormsModule,ReactiveFormsModule } from '@angular/forms';

import { AppComponent } from './app.component';
import { LoginComponent } from './login/login.component';
import {UsuarioService} from './servicios/Usuario/usuario.service';
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
import { HashLocationStrategy, LocationStrategy } from '@angular/common';
import { CrearComponent } from './Clientes/formularios/crear/crear.component';
import { NumericoDirective } from './Directivas/numerico.directive';
import { ModalModule } from 'ngx-bootstrap/modal';
import { PopupComponent } from './Modal/popup/popup.component';
import { MensajeInformativoComponent } from './Modal/mensaje-informativo/mensaje-informativo.component';
import { MsgErrorComponent } from './Modal/msg-error/msg-error.component';

@NgModule({

  entryComponents:[PopupComponent,CrearComponent,MensajeInformativoComponent,MsgErrorComponent],
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
    SedesComponent,
    CrearComponent,
    NumericoDirective,
    PopupComponent,
    MensajeInformativoComponent,
    MsgErrorComponent
   
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    ModalModule.forRoot()
 
  ],
  providers: [
    UsuarioService,
    { provide: LocationStrategy, useClass: HashLocationStrategy }
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
