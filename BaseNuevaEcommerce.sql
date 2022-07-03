select * from Usuario
SELECT * from Direccion

INSERT INTO Usuario VALUES('admin','123456','ADMIN','ADMIN','admin@gmail.com',1,1,1)
INSERT INTO Usuario VALUES('maria','123456','MARIA','LOPEZ','maria@gmail.com',2,2,1)
INSERT INTO Usuario VALUES('fer','123456','FER','PEREZ','fer@gmail.com',3,2,1)


INSERT INTO Direccion VALUES ('PANAMA','2121','0','MARTINEZ','BUENOS AIRES','1646',1)
INSERT INTO Direccion VALUES ('BOLIVIA','889','0','VILLA MARTELLI','BUENOS AIRES','1613',1)
INSERT INTO Direccion VALUES ('SANTIAGO DEL ESTERO','859','0','MARTINEZ','BUENOS AIRES','1646',1)

INSERT INTO Categoria VALUES ('BOTAS',1),('ZAPATOS',1),('BORCEGOS',1),('ZAPATILLAS',1),('SANDALIAS',1),('ACCESORIOS',1),('ZUECOS',1)

select * from Categoria

INSERT INTO Tipo VALUES('FEMENINO',1), ('MASCULINO',1), ('INFANTIL',1)

INSERT INTO Talle VALUES ('28',1), ('29',1), ('30',1),('31',1),('32',1),('33',1),('34',1),('35',1),('36',1),('37',1),('38',1),('39',1),('40',1),('41',1),('42',1),('43',1),('44',1),('45',1)

INSERT INTO EstadoComercial VALUES ('SALE',1),('HOT SALE',1),('AGOTADO',1),('NEW IN',1),('DISCONTINUADO',1),('ANULADO',1),('NORMAL',1)

INSERT INTO Temporada VALUES ('Fall-Winter',1), ('Spring-Summer',1)

INSERT INTO Marca VALUES('Propia',1)

INSERT INTO Color VALUES ('Negro',1), ('Blanco',1), ('Hueso',1), ('Suela',1), ('Visón',1),('Azul',1),('Animal Print',1),('Verde',1),('Gris',1) ,('Natural',1)


select * from Categoria
select * from Tipo
select * from Talle
select * from EstadoComercial
select * from Temporada
select * from Marca
select * from Color
select * from Articulo

INSERT INTO Articulo VALUES('Zapatilla','FEM01','https://drive.google.com/file/d/1PD2bG5BKCCc37JWDPl4PHDTWcFIh52Ow/view?usp=sharing','Zapatilla Antonia',1,4,1,1,1,1,0,3500,7,1)
INSERT INTO Articulo VALUES('Zapatilla','FEM02','https://drive.google.com/file/d/1AKA1XPtyXc3IfbrBTcxO-eJYkQ1ZZgA-/view?usp=sharing','Zapatilla Antonia',1,4,3,1,1,1,0,3500,7,1)
INSERT INTO Articulo VALUES('Zapatilla','FEM03','https://drive.google.com/file/d/1FPWOLMLgGsJdNvORAMFLM7SMRBQUaJja/view?usp=sharing','Zapatilla Antonia',1,4,4,1,1,1,0,3500,7,1)
INSERT INTO Articulo VALUES('Zueco','FEM04','https://drive.google.com/file/d/12mKepeCXZmllmE3GBTi8DAPYZnxk4eFs/view?usp=sharing','Zueco Bali',1,7,1,1,1,1,0,2500,7,1)
INSERT INTO Articulo VALUES('Zueco','FEM05','https://drive.google.com/file/d/1f56c96nfauGRA1zImPLFY2eA2FSE0Qr7/view?usp=sharing','Zueco Bali',1,7,4,1,1,1,0,2500,7,1)
INSERT INTO Articulo VALUES('Zueco','FEM06','https://drive.google.com/file/d/18UDH96BHak-APAhPnmCw9UUk8JLKmXno/view?usp=sharing','Zueco Bali',1,7,5,1,1,1,0,2500,7,1)
INSERT INTO Articulo VALUES('Zueco','FEM07','https://drive.google.com/file/d/1j1wELBhSkDpITynlOwslT3u5QniA4pwn/view?usp=sharing','Bota Brisa',1,1,1,1,1,1,0,4500,7,1)
