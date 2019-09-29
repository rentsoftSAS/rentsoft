use rentsoftbd;
create view v_alquiler
as

select 
alquiler.id,
alquiler.CodigoAlquiler,
alquiler.IdEstadoAlquiler,
estadosalquiler.Codigo,
estadosalquiler.Descripcion as EstadoAlquilerDescripcion,
alquiler.FechaAlquiler,
alquiler.Observaciones,
alquiler.IdCliente,
cliente .Documento,
cliente .Nombre,
cliente .Apellido,
cliente .Direccion,
cliente .idTipoDocumento,
tipodocumento.tipodocumento,
tipodocumento.descripcion
from alquiler
inner join cliente on cliente .id= alquiler.idcliente
inner join estadosalquiler on estadosalquiler.id=alquiler.idestadoalquiler
inner join tipodocumento on cliente .idTipodocumento =tipodocumento.id