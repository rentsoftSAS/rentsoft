import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { PrincipalComponent } from './principal/principal.component';
import { HomeComponent } from './home/home.component';

const routes: Routes = [{path:'', component: LoginComponent},
{path:"principal",component:PrincipalComponent, children:[{path:'home', component:HomeComponent}]
}];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
