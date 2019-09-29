use rentsoftbd;
create view v_cliente as
select 
cliente.id,
cliente.Documento,
cliente.Nombre,
cliente.Apellido,
cliente.Direccion,
cliente.Correo,
cliente.idTipoDocumento,
tipodocumento.tipodocumento,
tipodocumento.descripcion
from
cliente
inner join
tipodocumento on cliente .idTipodocumento =tipodocumento.id





