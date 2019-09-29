use rentsoftbd;
create view v_estadoselemento as 
select
id, 
Estado, 
Descripcion
from estadoselemento
where Activo=1