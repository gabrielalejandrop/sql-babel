USE `curso-mysql`;

-- select o.empresa_id, avg(o.salario)
-- from ofertas o
-- group by o.empresa_id
-- having avg(o.salario) > 20000;

-- select u.nombre, u.apellidos, o.titulo from ofertas o
-- inner join ofertas_usuarios ou on o.id=ou.oferta_id
-- inner join usuarios u on ou.usuario_id = u.id;

-- select * from ofertas o
-- where o.ciudad in ("Sevilla", "Barcelona");

-- select titulo from ofertas
-- where id in(select ou.oferta_id from ofertas_usuarios ou
-- where usuario_id=2);

-- select count(titulo) from ofertas
-- where id in(select ou.oferta_id from ofertas_usuarios ou
-- where usuario_id=2);

-- select u.nombre, u.apellidos from usuarios u
-- where id in
-- (select ou.usuario_id from ofertas_usuarios ou
-- where oferta_id=20);

-- select count(u.nombre) from usuarios u
-- where id in
-- (select ou.usuario_id from ofertas_usuarios ou
-- where oferta_id=20);

-- select nombre from empresas
-- where nombre not in
-- (select e.nombre from empresas e
-- right join ofertas o on o.empresa_id=e.id)

-- select nombre, apellidos from usuarios
-- where id not in
-- (select usuario_id from ofertas_usuarios);

-- select * from empresas e
-- where (
-- select count(*) from ofertas o 
-- where o.empresa_id=e.id) > 3;

-- select * from usuarios u
-- where(
-- select count(*) from ofertas_usuarios ou where ou.usuario_id=u.id
-- ) >3;

-- select o.titulo, count(*) from ofertas o
-- inner join ofertas_usuarios ou on o.id=ou.oferta_id
-- group by o.titulo
-- order by count(*) desc;
