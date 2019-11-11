import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {RouterModule, Route} from '@angular/router'
import { AppRoutingModule } from './app-routing.module';
import { HttpClientModule } from '@angular/common/http';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

import { AppComponent } from './app.component';
import { LoginComponent } from './login/login.component';
import {UsuarioService} from './servicios/usuario.service';
import { PrincipalComponent } from './principal/principal.component';
import { HomeComponent } from './home/home.component';
import { ConsultarAlquilerComponent } from './Alquiler/consultar-alquiler/consultar-alquiler.component';
import { CotizarAlquilerComponent } from './Alquiler/cotizar-alquiler/cotizar-alquiler.component';
import { DespacharAlquilerComponent } from './Alquiler/despachar-alquiler/despachar-alquiler.component';
import { DevolverAlquilerComponent } from './Alquiler/devolver-alquiler/devolver-alquiler.component';
import { LiquidarAlquilerComponent } from './Alquiler/liquidar-alquiler/liquidar-alquiler.component'

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
    LiquidarAlquilerComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    HttpClientModule
 
 
  ],
  providers: [
    UsuarioService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
