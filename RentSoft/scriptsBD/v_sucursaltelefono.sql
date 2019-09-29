use rentsoftbd;
create view v_sucursaltelefono as 
select
sucursaltelefono.id, 
sucursaltelefono.IdSucursal, 
sucursaltelefono.Telefono,
sucursal.Nombre,
sucursal.Direccion, 
sucursal.IdCiudad,
	ciudad.Nombre as ciudadnombre,
	ciudad.IdPais,
pais.Nombre as paisnombre
from sucursaltelefono
inner join sucursal on sucursal.id= sucursaltelefono.IdSucursal
inner join  ciudad on ciudad.id=sucursal.idciudad
inner join pais on ciudad.idpais= pais.id
where 
sucursaltelefono.Activo=1