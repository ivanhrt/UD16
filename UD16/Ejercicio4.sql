/*Ejercicio 4*/

/*4.1*/ select nombre from peliculas;
/*4.2*/ select distinct calificacionedad from peliculas;
/*4.3*/ select * from peliculas where calificacionedad is null;
/*4.4*/ select * from salas where pelicula is null;
/*4.5*/ select * from salas left join peliculas on salas.pelicula = peliculas.codigo;
/*4.6*/ select * from salas right join peliculas on salas.pelicula = peliculas.codigo;
/*4.7*/ select peliculas.nombre from salas right join peliculas on salas.pelicula = peliculas.codigo where salas.pelicula is null;
/*4.8*/ insert into peliculas values (10, 'Uno, Dos, Tres', '+7');
/*4.9*/ update peliculas set calificacionedad = 'no recomendables para menores de 13 años' where calificacionedad is null;
/*4.10*/delete from salas where pelicula in (select codigo from peliculas where calificacionedad = 'G');