use rentsoftbd;
create view v_elementoalquiler as 

select 
elementoalquiler.id, 
elementoalquiler.IdAlquiler, 
	alquiler.CodigoAlquiler,
	alquiler.IdEstadoAlquiler as  alquilerIdEstadoAlquiler,
estadosalquilerelemento.Codigo as estadosalquilerelementocodigo,
estadosalquilerelemento.Descripcion as estadosalquilerelementoDescripcion,
	alquiler.FechaAlquiler,
	alquiler.Observaciones,
	alquiler.IdCliente,
cliente .Documento,
cliente .Nombre as clientenombre,
cliente .Apellido,
cliente .Direccion,
cliente .idTipoDocumento,
	tipodocumento.tipodocumento,
	tipodocumento.descripcion as tipodocumentodescripcion,
elementoalquiler.IdElemento, 
elemento.Codigo as elementocodigo,
elemento.IdEstadoElemento,
elemento.FechaCompra,
elemento.IdAnexo,
	anexos.tabla,
	anexos.Ruta,
	anexos.IdRegistro,
elemento.Horometro,
elemento.Nombre as elementonombre,
elemento.PrecioElemento,
elemento.TarifaAlquiler,
elemento.CodigoSerial,
elemento.IdTipoElemento,
elemento.IdTipoFacturacion as  elementoidTipoFacturacion,
	tiposfacturacionelemento.TipoFacturacion,
	tiposfacturacionelemento.Descripcion as tiposfacturacionelementodescripcion,
elementoalquiler.IdEstadoAlquiler as elementoalquilerIdEstadoAlquiler, 
elementoalquiler.FechaDespacho,
elementoalquiler.FechaDevolucion, 
elementoalquiler.CantidadAlquilada, 
elementoalquiler.IdTipoFacturacion,
	tiposfacturacion.TipoFacturacion as tiposfacturacionTipoFacturacion,
	tiposfacturacion.Descripcion as tiposfacturaciondescripcion

from
elementoalquiler
inner join tiposfacturacion on tiposfacturacion.id=elementoalquiler. IdTipoFacturacion
inner join elemento on elemento.id= elementoalquiler.IdElemento
inner join alquiler on alquiler.id=elementoalquiler.IdAlquiler
inner join estadosalquiler as estadosalquilerelemento on estadosalquilerelemento.id=elementoalquiler.IdEstadoAlquiler
inner join cliente on cliente .id= alquiler.idcliente
inner join estadosalquiler on estadosalquiler.id=alquiler.idestadoalquiler
inner join tipodocumento on cliente .idTipodocumento =tipodocumento.id
inner join anexos on anexos.id= elemento.idanexo
inner join tiposfacturacion as tiposfacturacionelemento on tiposfacturacionelemento.id =elemento.IdTipoFacturacion
where elementoalquiler.activo=1