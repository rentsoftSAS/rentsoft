use rentsoftbd;
create view v_tiposfacturacion as 
select
id, 
TipoFacturacion, 
Descripcion
from tiposfacturacion
where
activo=1