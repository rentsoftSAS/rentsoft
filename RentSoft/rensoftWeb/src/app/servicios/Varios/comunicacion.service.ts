import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';
import { BsModalRef } from 'ngx-bootstrap/modal/public_api';

@Injectable({
  providedIn: 'root'
})
export class ComunicacionService {

  mensaje: BsModalRef;
  private enviarMensajeSubject = new Subject<BsModalRef>();
  enviarMensajeObservable = this.enviarMensajeSubject.asObservable();

  enviarMensaje(mensaje: BsModalRef) {
    this.mensaje = mensaje;
    this.enviarMensajeSubject.next(mensaje);
  }
}