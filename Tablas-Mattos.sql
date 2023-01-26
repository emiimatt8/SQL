CREATE SCHEMA GLP;

USE GLP;
 
CREATE TABLE ventas_glp (
id_venta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_factura INT NOT NULL,
id_producto INT NOT NULL,
id_cliente VARCHAR (5) NOT NULL,
id_empresa VARCHAR (5) NOT NULL,
fecha_venta DATE,
monto_total DECIMAL (9,2)
);

CREATE TABLE proveedores_glp (
id_empresa VARCHAR (5) NOT NULL,
nombre_empresa VARCHAR (40),
cuit_empresa INT NOT NULL,
actividad_principal VARCHAR (30),
id_pozo INT NOT NULL PRIMARY KEY
);

CREATE TABLE facturas (
id_factura INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_cliente VARCHAR (5) NOT NULL,
fecha_factura DATE,
id_producto INT NOT NULL,
cantidad_producto INT,
monto_total DECIMAL (9,2)
);

CREATE TABLE producto (
id_producto INT NOT NULL PRIMARY KEY,
nombre_producto VARCHAR (15),
precio_unitario DECIMAL (7,2)
);

CREATE TABLE clientes (
id_cliente INT NOT NULL PRIMARY KEY,
nombre_cliente VARCHAR (40),
actividad VARCHAR (20),
cuit INT NOT NULL
);

CREATE TABLE pozos (
id_pozo INT PRIMARY KEY,
id_empresa VARCHAR (5) NOT NULL,
ubicacion_pozo VARCHAR (30) NOT NULL
);

CREATE TABLE informacion_pozos (
id_pozo INT NOT NULL PRIMARY KEY,
profundiad_pozo DECIMAL (9,2),
clasificacion_pozo VARCHAR (20),
tipo_extraccion VARCHAR (30),
estado_extraccion VARCHAR (20)
);


CREATE TABLE ubicacion (
id_yacimiento VARCHAR (5) NOT NULL PRIMARY KEY,
ubicacion_pozo VARCHAR (30),
cuenca VARCHAR (20),
coordenada_y DECIMAL (9,2),
coordenada_x DECIMAL (9,2)
);
