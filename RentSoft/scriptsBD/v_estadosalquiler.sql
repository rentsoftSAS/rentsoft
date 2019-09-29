use rentsoftbd;
create view v_estadosalquiler as
select
id, 
Codigo, 
Descripcion, 
Estado
from estadosalquiler
where activo=1