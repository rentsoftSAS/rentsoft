use rentsoftbd;
create view v_tipodocumento as 
select
tipodocumento.id, 
tipodocumento.Tipodocumento, 
tipodocumento.Descripcion
from tipodocumento
where activo=1
