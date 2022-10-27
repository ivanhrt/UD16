/*Ejercicio 1*/

/*1.1*/ select nombre from articulos;
/*1.2*/ select nombre, precio from articulos;
/*1.3*/ select nombre from articulos where precio<=200;
/*1.4*/ select * from articulos where precio between 60 and 120;
/*1.5*/ select nombre, precio*166.386 from articulos;
/*1.6*/ select avg(precio) from articulos;
/*1.7*/ select avg(precio)from articulos where fabricante=2;
/*1.8*/ select count(nombre) from articulos where precio>=180;
/*1.9*/ select nombre, precio from articulos where precio>=180 order by precio desc; 
	    select nombre, precio from articulos where precio>=180 order by nombre;
/*1.10*/select * from articulos, fabricantes where articulos.fabricante=fabricantes.codigo;
/*1.11*/select articulos.nombre, articulos.precio, fabricantes.nombre from articulos, fabricantes where articulos.fabricante=fabricantes.codigo;
/*1.12*/select avg(articulos.precio), fabricantes.codigo from articulos, fabricantes where articulos.fabricante=fabricantes.codigo group by fabricantes.codigo;
/*1.13*/select avg(articulos.precio), fabricantes.nombre from articulos, fabricantes where articulos.fabricante=fabricantes.codigo group by fabricantes.codigo;
/*1.14*/select fabricantes.nombre from fabricantes, articulos where articulos.fabricante=fabricantes.codigo and (select avg(articulos.precio) >=150 group by fabricantes.nombre) group by fabricantes.codigo;
/*1.15*/select nombre, precio from articulos where precio = (select min(precio) from articulos);
/*1.16*/select articulos.nombre, articulos.precio, fabricantes.nombre from articulos, fabricantes where articulos.fabricante = fabricantes.codigo and articulos.precio = (select max(articulos.precio) from articulos where articulos.fabricante = fabricantes.codigo) ;
/*1.17*/insert into articulos values (11,'Altavoces',70,2);
/*1.18*/update articulos set nombre = 'Impresora Laser'where codigo = 8;
/*1.19*/update articulos set precio = precio*0.9;
/*1.20*/update articulos set precio = precio-10 where precio>=120;