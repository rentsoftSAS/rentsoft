
drop database if exists RentSoftBD;
    create database if not exists RentSoftBD;
	use RentSoftBD;
	create table if not exists Cliente
	(id integer NOT NULL AUTO_INCREMENT,
	Documento varchar(50),
	Nombre varchar(200),
	Apellido varchar(200),
	Direccion varchar(200), 
	Correo varchar(200),
	idTipoDocumento integer ,

	Activo boolean,
	IdUsuarioCrea integer,
	FechaCreacion datetime,
	IdUsuarioModifica integer,
	FechaModificacion datetime,
	 primary key (id)
	) ;

	create table if not exists TipoDocumento
	(id integer NOT NULL AUTO_INCREMENT,
	Tipodocumento varchar(50),
	Descripcion varchar(100),
	Activo boolean,
	IdUsuarioCrea integer,
	FechaCreacion datetime,
	IdUsuarioModifica integer,
	FechaModificacion datetime,
	primary key (id)

	);


	create table if not exists Usuario
	(id integer NOT NULL AUTO_INCREMENT,
	Nombre varchar(200),
	Apellido varchar(200),
	clave varchar(2184),
	Usuario varchar(500),
	Pseudonimo varchar(500),
	Telefono varchar(200),
	Estado boolean,
	Correo varchar(200),
	IdRol integer,
	Activo boolean,
	IdUsuarioCrea integer,
	FechaCreacion datetime,
	IdUsuarioModifica integer,
	FechaModificacion datetime,
	primary key (id)
	);

	create table if not exists Rol
	(id integer NOT NULL AUTO_INCREMENT,
	Rol varchar(200),
	Activo boolean,
	IdUsuarioCrea integer,
	FechaCreacion datetime,
	IdUsuarioModifica integer,
	FechaModificacion datetime,
	primary key (id)
	);
 create table if not exists Elemento
	(id integer NOT NULL AUTO_INCREMENT,
	Codigo varchar(100),
    IdEstadoElemento integer,
    FechaCompra date,
    IdAnexo integer,
    Horometro bigint,
    Nombre varchar (500),
    PrecioElemento decimal,   
    TarifaAlquiler decimal,
    CodigoSerial varchar(500),
    IdTipoElemento integer,
    IdTipoFacturacion integer,    
Activo boolean,
	IdUsuarioCrea integer,
	FechaCreacion datetime,
	IdUsuarioModifica integer,
	FechaModificacion datetime,
	primary key (id)
	);
  create table if not exists Anexos
	(id integer NOT NULL AUTO_INCREMENT,
	 tabla varchar(100),
     Ruta varchar(500),
     IdRegistro  bigint, 
     
Activo boolean,
	IdUsuarioCrea integer,
	FechaCreacion datetime,
	IdUsuarioModifica integer,
	FechaModificacion datetime,
	primary key (id)
	);
    
    
     create table if not exists EstadosElemento
	(id integer NOT NULL AUTO_INCREMENT,
	 Estado varchar(200),
     Descripcion varchar(1000),
Activo boolean,
	IdUsuarioCrea integer,
	FechaCreacion datetime,
	IdUsuarioModifica integer,
	FechaModificacion datetime,
	primary key (id)
	);
    
 create table if not exists TiposFacturacion
	(id integer NOT NULL AUTO_INCREMENT,
	 TipoFacturacion varchar(200),
     Descripcion varchar(1000),
     Activo boolean,
	IdUsuarioCrea integer,
	FechaCreacion datetime,
	IdUsuarioModifica integer,
	FechaModificacion datetime,
	primary key (id)
	);
    
    create table if not exists Sucursal(
    id integer not null auto_increment,
    Nombre varchar(200),
    Direccion varchar(100),
    IdCiudad integer,
	Activo boolean,
	IdUsuarioCrea integer,
	FechaCreacion datetime,
	IdUsuarioModifica integer,
	FechaModificacion datetime,
	primary key (id)
    );
    
     create table if not exists Pais(
    id integer not null auto_increment,
    Nombre varchar(200),
 	Activo boolean,
	IdUsuarioCrea integer,
	FechaCreacion datetime,
	IdUsuarioModifica integer,
	FechaModificacion datetime,
	primary key (id)
    );
    
     create table if not exists Ciudad(
    Id integer not null auto_increment,
    Nombre varchar(200),
    IdPais integer,
	Activo boolean,
	IdUsuarioCrea integer,
	FechaCreacion datetime,
	IdUsuarioModifica integer,
	FechaModificacion datetime,
	primary key (id)
    );
    
     
     create table if not exists SucursalTelefono(
    id integer not null auto_increment,
    IdSucursal Integer,
    Telefono varchar(100),
	Activo boolean,
	IdUsuarioCrea integer,
	FechaCreacion datetime,
	IdUsuarioModifica integer,
	FechaModificacion datetime,
	primary key (id)
    );
    
    
    
    create table if not exists ElementoAlquiler(
    id integer not null auto_increment,
    IdAlquiler Integer,
    IdElemento integer,
    IdEstadoAlquiler integer,
    FechaDespacho datetime,
    FechaDevolucion datetime,
    CantidadAlquilada bigint,
    IdTipoFacturacion integer,
    Activo boolean,
	IdUsuarioCrea integer,
	FechaCreacion datetime,
	IdUsuarioModifica integer,
	FechaModificacion datetime,
	primary key (id)
    );
    
        
    create table if not exists Alquiler(
    id integer not null auto_increment,
	CodigoAlquiler varchar(100),
    IdEstadoAlquiler integer,
    FechaAlquiler datetime,
    Observaciones varchar(5000),
    IdCliente integer,
    Activo boolean,
	IdUsuarioCrea integer,
	FechaCreacion datetime,
	IdUsuarioModifica integer,
	FechaModificacion datetime,
	primary key (id)
    );
        create table if not exists EstadosAlquiler(
    id integer not null auto_increment,
	Codigo varchar(100),
    Descripcion varchar(5000),
    Estado varchar(500),
    
    Activo boolean,
	IdUsuarioCrea integer,
	FechaCreacion datetime,
	IdUsuarioModifica integer,
	FechaModificacion datetime,
	primary key (id)
    );
    
   create table if not exists Bodega(
    id integer not null auto_increment,
	Nombre varchar(200),
    Cantidad integer,
    IdElemento integer,
    IdSucursal integer,
    Activo boolean,
	IdUsuarioCrea integer,
	FechaCreacion datetime,
	IdUsuarioModifica integer,
	FechaModificacion datetime,
	primary key (id)
    );
    
      create table if not exists FacturacionElemento(
    id integer not null auto_increment,
	Cantidad int,
    IdElementoAlquiler integer,
    FechaFinalAlquiler datetime,
    FechaInicialFacturacion datetime,
    IdTarifaAlquiler integer,
    Total double,
    
    
    Activo boolean,
	IdUsuarioCrea integer,
	FechaCreacion datetime,
	IdUsuarioModifica integer,
	FechaModificacion datetime,
	primary key (id)
    );