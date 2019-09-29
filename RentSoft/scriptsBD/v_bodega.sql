use rentsoftbd;
create view v_bodega as
 select  
 bodega.id,
 bodega.Nombre,
 bodega.Cantidad,
 bodega.IdElemento,
 bodega.IdSucursal,
 sucursal.Nombre as sucursalnombre,
 sucursal.Direccion,
 sucursal.IdCiudad,
 ciudad.Nombre as ciudadnombre,
 ciudad.IdPais
 from bodega
 inner join sucursal on sucursal.id=bodega.idsucursal
 inner join elemento on elemento.id=bodega.idelemento
 inner join ciudad on ciudad.id=  sucursal.IdCiudad