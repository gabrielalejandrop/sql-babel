USE `ejercicios`;

-- 1.1 Obtener los nombres y los precios de los productos de la tienda
-- select nombre,precio from articulos;

-- 1.2 Obtener el nombre de los productos cuyo precio sea mayor o igual a 200 €. 
-- select nombre from articulos
-- where precio >=200;

-- 1.3 Obtener todos los datos de los artículos cuyo precio esté entre los 60 € y los
-- 120 € (ambas cantidades incluidas).

-- select * from articulos 
-- where precio between 60 and 120;

-- 1.4 Obtener el nombre y el precio en pesetas (es decir, el precio en euros
-- multiplicado por 166'386).
-- select nombre, precio*166.386 from articulos;

-- 1.5 Seleccionar el precio medio de todos los productos.
-- select avg(precio) from articulos;

-- 1.6 Obtener el precio medio de los artículos cuyo código de fabricante sea 2.
-- select avg(precio) from articulos
-- where fabricante = 2;

-- 1.7 Obtener el número de artículos cuyo precio sea mayor o igual a 180 €
-- select count(*) from articulos
-- where precio >=180;

-- 1.8 Obtener el nombre y precio de los artículos cuyo precio sea mayor o igual a 180
-- € y ordenarlos descendentemente por precio, y luego ascendentemente por
-- nombre.

-- select nombre, precio from articulos
-- where precio >=180
-- order by precio desc, nombre asc;

-- 1.9 Obtener un listado completo de artículos, incluyendo por cada articulo los
-- datos del articulo y de su fabricante.

-- select * from articulos a
-- inner join fabricantes f on a.fabricante=f.idfabricantes;

-- 1.10 Obtener un listado de artículos, incluyendo el nombre del artículo, su precio, y
-- el nombre de su fabricante.

-- select a.nombre, a.precio, f.nombre from articulos a
-- inner join fabricantes f on a.fabricante=f.idfabricantes;

-- 1.11 Obtener el precio medio de los productos de cada fabricante, mostrando solo
-- los códigos de fabricante.

-- select a.precio, f.idfabricantes from articulos a
-- inner join fabricantes f on a.fabricante=f.idfabricantes;

-- 1.12 Obtener el precio medio de los productos de cada fabricante, mostrando el
-- nombre del fabricante

-- select avg(a.precio), f.nombre from articulos a
-- inner join fabricantes f on a.fabricante=f.idfabricantes
-- group by f.nombre;

-- 1.13 Obtener los nombres de los fabricantes que ofrezcan productos cuyo precio
-- medio sea mayor o igual a 150 €.


-- 1.14 Obtener el nombre y precio del artículo más barato.

-- select nombre, precio from articulos
-- order by precio asc limit 1;

-- 1.15 Obtener una lista con el nombre y precio de los artículos más caros de cada
-- proveedor (incluyendo el nombre del proveedor).



-- 1.16 Añadir un nuevo producto: Altavoces de 70 € (del fabricante 2).
-- insert into articulos (nombre,precio,fabricante)
-- values ("Altavoces",70,2);

-- 1.17 Cambiar el nombre del producto 8 a 'Impresora Laser'

-- update articulos
-- set nombre = "Impresora laser"
-- where idarticulos=8;

-- 1.18 Aplicar un descuento del 10 % (multiplicar el precio por 0'9) a todos los
-- productos.

-- update articulos
-- set precio = precio*0.9;

-- 1.19 Aplicar un descuento de 10 € a todos los productos cuyo precio sea mayor o
-- igual a 120 €.

-- update articulos
-- set precio = precio-10
-- where precio>=120;