use rentsoftbd;
create view v_ciudad as 

select
ciudad.Id,
ciudad.Nombre,
ciudad.IdPais,
pais.Nombre as paisnombre
from ciudad
inner join pais on ciudad.idpais= pais.id

