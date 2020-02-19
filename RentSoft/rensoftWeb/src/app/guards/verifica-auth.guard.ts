import { Injectable } from '@angular/core';
import { CanActivate, CanActivateChild, CanLoad, Route, UrlSegment, ActivatedRouteSnapshot, RouterStateSnapshot, UrlTree, Router } from '@angular/router';
import { Observable, from } from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class VerificaAuthGuard implements CanActivate, CanActivateChild, CanLoad {
  constructor(private router:Router){}
  canActivate(){    
    const token = localStorage.getItem('jwt');
    if (!token){
      this.router.navigate(['/']);
     
    }
   // this.router.navigate(['/principal']);   
    return true;
  }
  canActivateChild(){
    const token = localStorage.getItem('jwt');
    if (!token){
      this.router.navigate(['/']);
    }
    return true;
  }
  canLoad() {
    const token = localStorage.getItem('jwt');    
    if (token){
      this.router.navigate(['/principal']);
    }
    return true;
  }
}
