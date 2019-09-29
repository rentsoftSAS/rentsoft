use rentsoftbd;
create view v_rol as
select 
id, 
Rol
from rol 
where 
activo=1