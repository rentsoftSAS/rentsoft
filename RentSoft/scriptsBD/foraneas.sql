use rentsoftbd;
/*tabla alquiler*/ 
ALTER TABLE alquiler 
ADD CONSTRAINT 
fk_alquiler_estadoAlquiler 
 FOREIGN KEY  (IdEstadoAlquiler)
 REFERENCES estadosalquiler(id);
 
 alter table alquiler add constraint fk_alquiler_cliente 
 foreign key (IdCliente) references cliente(id);
 
 alter table alquiler add constraint fk_usuario_crea_alquiler 
 foreign key (IdUsuarioCrea) references usuario(id);
 
 alter table alquiler add constraint fk_usuario_modifica_alquiler
 foreign key (idUsuarioModifica) references usuario(id);
 
 /*tabla anexos*/
 alter table anexos add constraint fk_usuario_crea_anexos 
 foreign key (IdUsuarioCrea) references usuario(id);
 
 alter table anexos add constraint fk_usuario_modifica_anexos
 foreign key (idUsuarioModifica) references usuario(id);
 
 /*tabla bodega*/
 
 alter table bodega add constraint fk_bodega_elemento foreign key (IdElemento) references elemento(id); 
 alter table bodega add constraint fk_bodega_sucursal foreign key (IdSucursal) references  sucursal(id);
 
 alter table bodega add constraint fk_usuario_crea_bodega  foreign key (IdUsuarioCrea) references usuario(id);
 alter table bodega add constraint fk_usuario_modifica_bodega  foreign key (IdUsuarioModifica) references usuario(id);
 
  /*tabla ciudad*/
  alter table ciudad add constraint fk_usuario_crea_ciudad  foreign key (IdUsuarioCrea) references usuario(id);
  alter table ciudad add constraint fk_usuario_modifica_ciudad  foreign key (IdUsuarioModifica) references usuario(id);
  
    /*tabla cliente*/
  alter table cliente add constraint fk_cliente_tipoDocumento  foreign key (idTipoDocumento) references tipodocumento(id);
  alter table cliente add constraint  fk_usuario_crea_cliente foreign key (IdUsuarioCrea) references usuario(id);
  alter table cliente add constraint  fk_usuario_modifica_cliente foreign key (IdUsuarioModifica) references usuario(id) ;
  /*tabla contacto*/
 alter table  contacto add constraint fk_contacto_cliente foreign key (id_cliente) references cliente(id);
    
    
   /*tabla elemento*/ 
  alter table elemento add constraint fk_elemento_estado_elemento foreign key (IdEstadoElemento) references estadoselemento(id);
  alter table elemento add constraint fk_elemento_anexo foreign key (IdAnexo) references anexos(id);
  alter table elemento add constraint fk_elemento_facturacion foreign key (IdTipoFacturacion) references tiposfacturacion(id);
 /*revisar tipos de elemento enumeracion ?*/
 /*alter table elemento add constraint fk_elemento_tipo_elemento foreign key (IdTipoElemento) references anexos(id);*/
  
 alter table elemento add constraint fk_usuario_crea_elemento foreign key (IdUsuarioCrea) references usuario(id);
 alter table elemento add constraint fk_usuario_modifica_elemento foreign key (IdUsuarioModifica) references usuario(id);
 
 
 /*elementoAlquiler*/
 alter table elementoalquiler add constraint fk_elementoalquiler_alquiler foreign key (IdAlquiler) references alquiler(id);
 alter table elementoalquiler add constraint fk_elementoalquiler_elemento foreign key (IdElemento) references elemento(id);
 alter table elementoalquiler add constraint fk_elementoalquiler_estado foreign key (IdEstadoAlquiler) references estadosalquiler(id);
 alter table elementoalquiler add constraint fk_elementoalquiler_tipo_facturacion foreign key (IdTipoFacturacion) references tiposfacturacion(id);
 
 alter table elementoalquiler add constraint fk_usuario_crea_elemento_alquiler foreign key (IdUsuarioCrea) references usuario(id);
 alter table elementoalquiler add constraint fk_usuario_modifica_elemento_alquiler foreign key (IdUsuarioCrea) references usuario(id);

 /*estados alquiler*/
  
alter table estadoselemento add constraint fk_usuario_crea_estados_elemento foreign key (IdUsuarioCrea) references usuario(id);
alter table estadoselemento add constraint fk_usuario_modifica_estados_elemento foreign key (IdUsuarioModifica) references usuario(id);
 
 /*facturacionelemento*/
 
 alter table facturacionelemento add constraint	fk_facturacionelemento_elemento foreign key(IdElementoAlquiler) references elemento(id);
 /*revisar las tarifas*/
 /*alter table facturacionelemento add constraint	fk_facturacionelemento_elemento foreign key(IdTarifaAlquiler) references elemento(id);*/
 alter table facturacionelemento add constraint fk_usuario_crea_facturacion_elemento foreign key (IdUsuarioCrea) references usuario(id);
 alter table facturacionelemento add constraint fk_usuario_modifica_facturacion_elemento foreign key (IdUsuarioModifica) references usuario(id);

 /*pais*/
 
 alter table pais add constraint fk_usuario_crea_pais foreign key (IdUsuarioCrea) references usuario(id);
 alter table pais add constraint fk_usuario_modifica_pais foreign key (IdUsuarioModifica) references usuario(id);
 
  /*rol*/
  
alter table rol add constraint fk_usuario_crea_rol foreign key (IdUsuarioCrea) references usuario(id);
 alter table rol add constraint fk_usuario_modifica_rol foreign key (IdUsuarioModifica) references usuario(id);
 
   /*sucursal*/
alter table sucursal add constraint fk_sucursal_ciudad foreign key (IdCiudad) references ciudad(id);

alter table sucursal add constraint fk_usuario_crea_sucursal foreign key (IdUsuarioCrea) references usuario(id);
alter table sucursal add constraint fk_usuario_modifica_sucursal foreign key (IdUsuarioModifica) references usuario(id);

/*sucursaltelefono*/
alter table sucursaltelefono add constraint fk_sucursal_telefino foreign key (IdSucursal) references sucursal(id);

alter table sucursaltelefono add constraint fk_usuario_crea_sucursal_telefono foreign key (IdUsuarioCrea) references usuario(id);
alter table sucursaltelefono add constraint fk_usuario_modifica_sucursal_telefono foreign key (IdUsuarioModifica) references usuario(id);

/*tipodocumento*/
alter table tipodocumento add constraint fk_usuario_crea_tipodocumento foreign key (IdUsuarioCrea) references usuario(id);
alter table tipodocumento add constraint fk_usuario_modifica_tipodocumento foreign key (IdUsuarioModifica) references usuario(id);

/*tiposfacturacion*/
alter table tiposfacturacion add constraint  fk_usuario_crea_tiposfacturacion foreign key (IdUsuarioCrea) references usuario(id);
alter table tiposfacturacion add constraint fk_usuario_modifica_tiposfacturacion foreign key (IdUsuarioModifica) references usuario(id);

/*usuario*/
alter table usuario add constraint fk_usuario_rol foreign key (IdRol) references rol(id);

alter table usuario add constraint fk_usuario_crea_usuario foreign key (IdUsuarioCrea) references usuario(id);
alter table usuario add constraint fk_usuario_modifica_usuario foreign key (IdUsuarioModifica) references usuario(id);