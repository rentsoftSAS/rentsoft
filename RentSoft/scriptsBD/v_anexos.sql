use rentsoftbd;
create view v_anexos as 
select
id,
tabla,
Ruta,
IdRegistro
from anexos
where activo=1