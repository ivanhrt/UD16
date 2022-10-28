
use actividades;


/*3.1*/
select * 
from almacenes;

/*3.2*/

select *
from cajas
where valor > 149;

/*3.3*/

select contenido
from cajas;

/*3.4*/

select AVG(valor)
from cajas;

/*3.5*/

select almacen, avg(valor)
from cajas
group by almacen;

/*3.6*/

select almacen, avg(valor)
from cajas
group by almacen
having avg(valor) > 149;

/*3.7*/

select almacenes.LUGAR, cajas.NUMREFERENCIA
from cajas
join almacenes
on almacenes.CODIGO = cajas.ALMACEN
order by almacenes.LUGAR;


/*3.8*/

select almacenes.CODIGO ,almacenes.LUGAR, almacenes.capacidad, count(cajas.ALMACEN) as "cajas Almacen"
from cajas
join almacenes
on almacenes.CODIGO = cajas.ALMACEN
group by almacenes.codigo, almacenes.LUGAR, almacenes.capacidad
order by almacenes.codigo asc;

/* 3.9 ---*/

select CODIGO, lugar 
from almacenes
where capacidad in (
select count(cajas.ALMACEN) 
from cajas
join almacenes
on almacenes.CODIGO = cajas.ALMACEN
group by cajas.ALMACEN
);

/* 3.10 */

select cajas.NUMREFERENCIA
from cajas
join almacenes
on almacenes.CODIGO = cajas.ALMACEN
where cajas.almacen = (select CODIGO from almacenes where LUGAR ='Bilbao');


/* 3.11 */

insert into almacenes values (6,"Barcelona",3);

/*3.12*/

INSERT INTO cajas VALUES ('H5RT','Paper',200,2);

/* 3.13 */

select * from cajas
order by valor desc;

update cajas
set valor = (valor + (valor * 15 /100) );

/*3.14*/
update cajas
set valor = (valor - (valor * 15 /100) )
where valor > (select avg(valor) from (select valor from cajas)as t);


/*3.15*/
delete from cajas
where valor < 100;

/*3.16*/

delete c from cajas c
join almacenes e 
on e.CODIGO = c.ALMACEN
where e.capacidad in (
	select count(ALMACEN) 
	from (select ALMACEN from cajas) as t
	join almacenes s
	on s.CODIGO = t.ALMACEN
	group by t.ALMACEN);