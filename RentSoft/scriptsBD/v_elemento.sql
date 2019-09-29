use rentsoftbd;
create view v_elemento as

select
elemento.id,
elemento.Codigo,
elemento.IdEstadoElemento,
elemento.FechaCompra,
elemento.IdAnexo,
anexos.tabla,
anexos.Ruta,
anexos.IdRegistro,
elemento.Horometro,
elemento.Nombre,
elemento.PrecioElemento,
elemento.TarifaAlquiler,
elemento.CodigoSerial,
elemento.IdTipoElemento,
elemento.IdTipoFacturacion,
tiposfacturacion.TipoFacturacion,
tiposfacturacion.Descripcion
from elemento
inner join anexos on anexos.id= elemento.idanexo
inner join tiposfacturacion on tiposfacturacion.id =elemento.IdTipoFacturacion