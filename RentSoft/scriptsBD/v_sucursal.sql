use rentsoftbd;
create view v_sucursal as
select 
sucursal.id, 
sucursal.Nombre,
sucursal.Direccion, 
sucursal.IdCiudad,
ciudad.Nombre as ciudadnombre,
ciudad.IdPais,
pais.Nombre as paisnombre
from sucursal
inner join  ciudad on ciudad.id=sucursal.idciudad
inner join pais on ciudad.idpais= pais.id
where
sucursal.activo=1