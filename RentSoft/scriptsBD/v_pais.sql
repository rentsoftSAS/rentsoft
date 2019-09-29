use rentsoftbd;
create view v_pais as
select id, 
Nombre 
from 
pais 
where 
activo=1 