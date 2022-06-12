use master
GO
Create Database eCommerce
go
use eCommerce
go
Create Table Usuario(
    ID bigint not null primary key identity (1, 1),
    nombreUsuario varchar(100) not null,
	contraseñaUsuario varchar(100) unique not null,
	nombrePersona varchar(100) not null,
	apellidoPersona varchar(100) not null,
	eMail varchar(100) not null,
	idDireccion bigint not null foreign key references Direccion(ID),
	idRol tinyint not null foreign key references Rol(ID),
	estado bit not null
)
go
create table Rol(
	ID tinyint not null primary key identity (1,1),
	nombre varchar(100) not null
)
go 
create table Direccion(
	ID bigint not null primary key identity (1,1),
	nombreCalle varchar(100) not null,
	numeroCalle bigint not null,
	piso varchar(5) null,
	localidad varchar(100) not null,
	provincia varchar(100) not null,
	codigoPostal varchar(10) not null,
	estado bit not null
)
go
create table Articulo(
	ID bigint not null primary key identity (1,1),
	nombre varchar(100) not null,
	descripcion varchar(500) not null,
	idEstadoComercial tinyint not null foreign key references EstadoComercial(ID),
	idCategoria smallint not null foreign key references Categoria(ID),
	idSubcategoria smallint not null foreign key references Subcategoria(ID),
	idMarca int not null foreign key references Marca(ID),
	idTemporada tinyint not null foreign key references Temporada(ID),
	descuento tinyint null,
	precio money not null,
	estado bit not null
)
go
create table EstadoComercial(
	ID tinyint not null primary key identity (1,1),
	nombre varchar(100) not null
)
go
create table Categoria(
	ID smallint not null primary key identity (1,1),
	nombre varchar(100) not null
)
go
create table Subcategoria(
	ID smallint not null primary key identity (1,1),
	nombre varchar(100) not null
)
go
create table Marca(
	ID int not null primary key identity (1,1),
	nombre varchar(100) not null
)
go
create table Temporada(
	ID tinyint not null primary key identity (1,1),
	nombre varchar(100) not null
)
go
create table Articulo_Pedido(
	ID bigint not null primary key identity (1,1),
	IDpedido bigint not null foreign key references Pedido(ID),
	IDarticulo bigint not null foreign key references Articulo(ID),
	--registroCompra int not null,
	precio money not null,
	cantidad smallint not null,
	estado bit not null
)
go
/*
create table Carrito(
	ID bigint not null primary key identity (1,1),
	idUsuario bigint not null unique foreign key references Usuario(ID),
	precioTotal money not null,
	registroCompra int not null,
	idPedido bigint not null unique foreign key references Pedido(ID)
)
*/
go
Create table Pedido(
	ID bigint not null primary key identity (1,1),
	idUsuario bigint not null foreign key references Usuario(ID),
	idDireccion bigint not null foreign key references Direccion(ID),
	idFormaPago tinyint not null foreign key references FormaPago(ID),
	retiraPorSucursal bit not null,
	pagoConfirmado bit not null,
	fechaInicioPedido datetime not null,
	fechaPago datetime null,
	idEnvio bigint not null foreign key references Envio(ID),
	estado bit not null
)
go
create table Envios(
	ID bigint not null primary key identity (1,1),
	idUsuario bigint not null foreign key references Usuario(ID),
	idFormaEnvio tinyint not null foreign key references FormaEnvio(ID),
	envioConfirmado bit not null,
	estado bit not null,
	fechaEnvioVendedor datetime not null,
	fechaEntrega datetime null
)
go
create table FormaEnvio(
	ID tinyint not null primary key identity (1,1),
	nombre varchar(100) not null
)
go
create table FormaPago(
	ID tinyint not null primary key identity (1,1),
	nombre varchar(100) not null
)