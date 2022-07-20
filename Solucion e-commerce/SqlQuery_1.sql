use master
GO
Create Database eCOMMERCE_DB1
go
use eCOMMERCE_DB1
go
Create Table Usuario(
    ID int not null primary key identity (1, 1),
    usuario varchar(50) not null,
	pass varchar(50) not null,
	nombrePersona varchar(100) null,
	apellidoPersona varchar(100) null,
	eMail varchar(100) unique not null,
	idDireccion int null foreign key references Direccion(ID),
	idRol int not null,
	estadoUsuario bit not null
)
go 
create table Direccion(
	ID int not null primary key identity (1,1),
	nombreCalle varchar(100) not null,
	numeroCalle int not null,
	piso varchar(5) null,
	localidad varchar(100) not null,
	provincia varchar(100) not null,
	codigoPostal varchar(10) not null,
	estadoDir bit not null
)
go
create table Articulo(
	ID int not null primary key identity (1,1),
	nombreArticulo varchar(100) not null,
    codigo varchar(100) not null,
    URLImagen varchar(500) null,
	descripcion varchar(500) not null,
    idTipo int not null foreign key references Tipo(ID),
	idCategoria int not null foreign key references Categoria(ID),
    idColor int not null foreign key references Color(ID),
    idTalle int not null foreign key references Talle(ID),
	idMarca int not null foreign key references Marca(ID),
	idTemporada int not null foreign key references Temporada(ID),
	descuento int null,
	precio money not null,
	idEstadoComercial int not null foreign key references EstadoComercial(ID),
	estadoActivo bit not null
)
go
create table Tipo(
	ID int not null primary key identity (1,1),
	nombreTipo varchar(100) not null,
    estadoTipo bit not null
)
go
create table Categoria(
	ID int not null primary key identity (1,1),
	nombreCategoria varchar(100) not null,
    estadoCategoria bit not null
)
go

create table Color(
	ID int not null primary key identity (1,1),
    nombreColor varchar(100) null, 
    estadoColor bit not null
)
go
create table Talle(
	ID int not null primary key identity (1,1),
    nombreTalle varchar(100) null,
    estadoTalle bit not null
)
go
create table Marca(
	ID int not null primary key identity (1,1),
	nombreMarca varchar(100) not null,
    estadoMarca bit not null
)
go
create table Temporada(
	ID int not null primary key identity (1,1),
	nombreTemporada varchar(100) not null,
    estadoTemporada bit not null
)
go
create table EstadoComercial(
	ID int not null primary key identity (1,1),
	nombreEC varchar(100) not null,
    estadoEC bit not null,
)
GO
CREATE TABLE ArticuloXPedido
    (
        [idPedido] INT FOREIGN KEY REFERENCES Pedido,
        [idArticulo] int FOREIGN KEY REFERENCES Articulo,
        precio money not null,
	    cantidad int not null,
        PRIMARY key(idPedido, idArticulo)
       
    )
go
Create table Pedido(
	ID int not null primary key identity (1,1),
	idUsuario int not null foreign key references Usuario(ID),
	fechaPedido datetime not null,
	importeTotal money not null,
	estadoPedido bit not null 
)
go
create table Envios(
	ID int not null primary key identity (1,1),
	idUsuario int not null foreign key references Usuario(ID),
    idPedido int not null foreign key references Pedido(ID),
    idDireccion int not null foreign key references Direccion(ID),
	idFormaEnvio int not null foreign key references FormaEnvio(ID),
    retiraPorSucursal bit not null,
	envioConfirmado bit not null,
	estado bit not null,
	fechaEnvio datetime not null,
	fechaEntrega datetime null
)
go
create table Pago(
	ID int not null primary key identity (1,1),
	idPedido int not null foreign key references Pedido(ID),
    idFormaPago int not null foreign key references FormaPago(ID),
    fechaPago datetime null,
    pagoConfirmado bit not null,
)
go
create table FormaEnvio(
	ID int not null primary key identity (1,1),
	nombre varchar(100) not null
)
go
create table FormaPago(
	ID int not null primary key identity (1,1),
	nombre varchar(100) not null
)
go
INSERT INTO Usuario VALUES('admin','123456','ADMIN','ADMIN','admin@gmail.com',1,1,1)
INSERT INTO Usuario VALUES('maria','123456','MARIA','LOPEZ','maria@gmail.com',2,2,1)
INSERT INTO Usuario VALUES('fer','123456','FER','PEREZ','fer@gmail.com',3,2,1)


INSERT INTO Direccion VALUES ('PANAMA','2121','0','MARTINEZ','BUENOS AIRES','1646',1)
INSERT INTO Direccion VALUES ('BOLIVIA','889','0','VILLA MARTELLI','BUENOS AIRES','1613',1)
INSERT INTO Direccion VALUES ('SANTIAGO DEL ESTERO','859','0','MARTINEZ','BUENOS AIRES','1646',1)

INSERT INTO Categoria VALUES ('BOTAS',1),('ZAPATOS',1),('BORCEGOS',1),('ZAPATILLAS',1),('SANDALIAS',1),('ACCESORIOS',1),('ZUECOS',1)

INSERT INTO Tipo VALUES('FEMENINO',1), ('MASCULINO',1), ('INFANTIL',1)

INSERT INTO Talle VALUES ('28',1), ('29',1), ('30',1),('31',1),('32',1),('33',1),('34',1),('35',1),('36',1),('37',1),('38',1),('39',1),('40',1),('41',1),('42',1),('43',1),('44',1),('45',1)

INSERT INTO EstadoComercial VALUES ('SALE',1),('HOT SALE',1),('AGOTADO',1),('NEW IN',1),('DISCONTINUADO',1),('ANULADO',1),('NORMAL',1)

INSERT INTO Temporada VALUES ('Fall-Winter',1), ('Spring-Summer',1)

INSERT INTO Marca VALUES('Propia',1)

INSERT INTO Color VALUES ('Negro',1), ('Blanco',1), ('Hueso',1), ('Suela',1), ('Visón',1),('Azul',1),('Animal Print',1),('Verde',1),('Gris',1) ,('Natural',1)

INSERT INTO Articulo VALUES('Zapatilla','FEM01','https://drive.google.com/file/d/1PD2bG5BKCCc37JWDPl4PHDTWcFIh52Ow/view?usp=sharing','Zapatilla Antonia',1,4,1,1,1,1,0,3500,7,1)
INSERT INTO Articulo VALUES('Zapatilla','FEM02','https://drive.google.com/file/d/1AKA1XPtyXc3IfbrBTcxO-eJYkQ1ZZgA-/view?usp=sharing','Zapatilla Antonia',1,4,3,1,1,1,0,3500,7,1)
INSERT INTO Articulo VALUES('Zapatilla','FEM03','https://drive.google.com/file/d/1FPWOLMLgGsJdNvORAMFLM7SMRBQUaJja/view?usp=sharing','Zapatilla Antonia',1,4,4,1,1,1,0,3500,7,1)
INSERT INTO Articulo VALUES('Zueco','FEM04','https://drive.google.com/file/d/12mKepeCXZmllmE3GBTi8DAPYZnxk4eFs/view?usp=sharing','Zueco Bali',1,7,1,1,1,1,0,2500,7,1)
INSERT INTO Articulo VALUES('Zueco','FEM05','https://drive.google.com/file/d/1f56c96nfauGRA1zImPLFY2eA2FSE0Qr7/view?usp=sharing','Zueco Bali',1,7,4,1,1,1,0,2500,7,1)
INSERT INTO Articulo VALUES('Zueco','FEM06','https://drive.google.com/file/d/18UDH96BHak-APAhPnmCw9UUk8JLKmXno/view?usp=sharing','Zueco Bali',1,7,5,1,1,1,0,2500,7,1)
INSERT INTO Articulo VALUES('Zueco','FEM07','https://drive.google.com/file/d/1j1wELBhSkDpITynlOwslT3u5QniA4pwn/view?usp=sharing','Bota Brisa',1,1,1,1,1,1,0,4500,7,1)

GO
SELECT p.ID, art.ID, art.nombreArticulo, art.precio,axp.cantidad, p.importeTotal FROM Pedido p
INNER JOIN ArticuloxPedido axp ON p.ID = axp.idPedido
INNER JOIN Articulo art ON axp.idArticulo = art.ID
WHERE p.estadoPedido = 1
GO