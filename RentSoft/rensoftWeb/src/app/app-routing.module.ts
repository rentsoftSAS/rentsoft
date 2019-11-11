import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { PrincipalComponent } from './principal/principal.component';
import { HomeComponent } from './home/home.component';
import { ConsultarAlquilerComponent } from './Alquiler/consultar-alquiler/consultar-alquiler.component';
import { CotizarAlquilerComponent } from './Alquiler/cotizar-alquiler/cotizar-alquiler.component';
import { DespacharAlquilerComponent } from './Alquiler/despachar-alquiler/despachar-alquiler.component';
import { DevolverAlquilerComponent } from './Alquiler/devolver-alquiler/devolver-alquiler.component';
import { LiquidarAlquilerComponent } from './Alquiler/liquidar-alquiler/liquidar-alquiler.component';

const routes: Routes = [{path:'', component: LoginComponent},
{path:"principal",component:PrincipalComponent,
children:[{path:'home', component:HomeComponent},{path:'CAlquiler', component:ConsultarAlquilerComponent},
          {path:'CotAlquiler', component:CotizarAlquilerComponent}, {path:'DesAlquiler', component:DespacharAlquilerComponent},
          {path:'DevAlquiler', component:DevolverAlquilerComponent}, {path:'LiqAlquiler',component:LiquidarAlquilerComponent}
        ], 
}];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
