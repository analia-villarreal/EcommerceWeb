
use eCOMMERCE_DB_
INSERT INTO Categoria
VALUES ('BOTAS'), ('ZAPATOS'), ('BORCEGOS'), ('ZAPATILLAS'), ('SANDALIAS'), ('ACCESORIOS'), ('ZUECOS')

select * from Articulo
select * from Categoria
select * from Tipo
select * from Talle
select * from EstadoComercial
select * from Temporada
select * from Marca
select * from Color

ALTER TABLE Articulo
ADD EstadoActivo bit;




EXEC sp_rename 'Articulo.estado', 'idEstadoComercial', 'COLUMN';
EXEC sp_rename 'Articulo.EstadoActivo', 'estadoActivo', 'COLUMN';

INSERT INTO Tipo
VALUES('FEMENINO'), ('MASCULINO'), ('INFANTIL')

INSERT INTO Talle VALUES ('28'), ('29'), ('30'),('31'),('32'),('33'),('34'),('35'),('36'),('37'),('38'),('39'),('40'),('41'),('42'),('43'),('44'),('45')

INSERT INTO Estado VALUES ('SALE'),('HOT SALE'),('AGOTADO'),('NEW IN'),('DISCONTINUADO'),('ANULADO'),('NORMAL')

INSERT INTO Temporada VALUES ('Fall-Winter'), ('Spring-Summer')

INSERT INTO Marca VALUES('Propia')

INSERT INTO Color VALUES ('Negro'), ('Blanco'), ('Hueso'), ('Suela'), ('Visón'),('Azul'),('Animal Print'),('Verde'),('Gris') ,('Natural')



SELECT * from Articulo


INSERT INTO Articulo VALUES ('Zapatilla','FEM01','fotos/Fotos Invierno 2022/Anonia_Negro (1)','Zapatilla Antonia Negro',1,1,5,1,1,1,0,3500.00,7, 1),
('Zapatilla','FEM02','fotos/Fotos Invierno 2022/Anonia_Hueso (1)','Zapatilla Antonia Hueso',1,1,5,1,1,1,0,3500.00,7, 1),
('Zapatilla','FEM03','fotos/Fotos Invierno 2022/Anonia_Suela (1)','Zapatilla Antonia Suela',1,1,5,1,1,1,0,3500.00,7, 1),
('Zueco','FEM04','fotos/Fotos Invierno 2022/Bali_Negro (1)','Zueco Bali Negro',1,1,8,1,1,1,0,3200.00,7,1),
('Zueco','FEM05','fotos/Fotos Invierno 2022/Bali_Suela (1)','Zueco Bali Suela',1,1,8,1,1,1,0,3200.00,7,1),
('Zueco','FEM06','fotos/Fotos Invierno 2022/Bali_Vison (1)','Zueco Bali Vison',1,1,8,1,1,1,0,3200.00,7,1),
('Bota','FEM07','fotos/Fotos Invierno 2022/Brisa_Animal Print (1)','Bota Brisa Animal Print',1,1,1,1,1,1,0,4500.00,7,1),
('Bota','FEM08','fotos/Fotos Invierno 2022/Brisa_Azul (2)','Bota Brisa Azul',1,1,1,1,1,1,0,4500.00,7,1),
('Bota','FEM09','fotos/Fotos Invierno 2022/Brisa_Negro (1)','Bota Brisa Negro',1,1,1,1,1,1,0,4500.00,7,1),
('Bota','FEM10','fotos/Fotos Invierno 2022/Brisa_Verde','Bota Brisa Verde',1,1,1,1,1,1,0,4500.00,7,1),
('Bota','FEM11','fotos/Fotos Invierno 2022/Clhoe_Negro (1)','Bota Chloe Negro',1,1,1,1,1,1,0,4500.00,7,1),
('Borcego','MAS01','https://static.dafiti.com.ar/p/viamo-9437-9311-1-product.jpg','Borcego Gotico Negro',2,3,1,4,1,1,15,3000.00,7,1);

select * from Articulo

SELECT A.ID, A.nombre, A.codigo, A.descripcion, A.URLImagen, A.precio, A.idMarca, M.nombre as Marca, a.idCategoria, C.nombre as Categoria, A.idTipo, T.nombre as Tipo, A.idColor, CO.nombre as Color, A.idTalle, TA.nombre as Talle, A.idTemporada, TE.nombre as Temporada, A.descuento, A.idEstadoComercial, EC.nombre as Estado_Comercial, A.estadoActivo FROM Articulo A, Marca M, Categoria C, EstadoComercial EC, Tipo T, Color CO, Talle TA, Temporada TE WHERE M.ID = A.idMarca AND C.ID = A.idCategoria and EC.ID = A.idEstadoComercial and CO.ID = A.idColor and TA.ID = A.idTalle and TE.ID = A.idTemporada and T.ID = A.idTipo
