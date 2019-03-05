use ej2;

-- 2.1 Obtener los apellidos de los empleados
-- select apellidos from empleados;

-- 2.2 Obtener los apellidos de los empleados sin repeticiones.
-- select distinct apellidos  from empleados ;

-- 2.3 Obtener todos los datos de los empleados que se apellidan 'López'
-- select * from empleados e
-- where e.apellidos = "López";

-- 2.4 Obtener todos los datos de los empleados que se apellidan 'López' ó 'Pérez'
-- select * from empleados e
-- inner join departamentos d on d.idDep=e.departamento
-- where e.apellidos in ("López", "Pérez");

-- 2.5 Obtener todos los datos de los empleados que trabajan para el departamento 14.
-- select * from empleados e
-- inner join departamentos d on d.idDep=e.departamento
-- where e.departamento in (14);

-- 2.6 Obtener todos los datos de los empleados que trabajan para el departamento 37 y para el departamento 77.
-- select * from empleados e
-- inner join departamentos d on d.idDep=e.departamento
-- where e.departamento in (27,77);

-- 2.7 Obtener todos los datos de los empleados cuyo apellido comience por 'P'.
-- select * from empleados e
-- where apellidos like  "q%";

-- 2.8 Obtener el presupuesto total de todos los departamentos.
-- select sum(presupuesto) from departamentos;

-- 2.9 Obtener el número de empleados en cada departamento.
-- select e.departamento, count(*) from empleados e
-- inner join departamentos d on d.idDep=e.departamento
-- group by e.departamento;

-- 2.10 Obtener un listado completo de empleados, incluyendo por cada empleado los datos del empleado y de su departamento.
-- select * from empleados e
-- inner join departamentos d on d.idDep=e.departamento;

-- 2.11 Obtener un listado completo de empleados, incluyendo el nombre y apellidos del empleado junto al nombre y presupuesto de su departamento.
-- select e.nombre, e.apellidos, d.nombre, d.presupuesto from empleados e
-- inner join departamentos d on d.idDep=e.departamento;

-- 2.12 Obtener los nombres y apellidos de los empleados que trabajen en departamentos cuyo presupuesto sea mayor de 60.000 €.
-- select e.nombre, e.apellidos from empleados e
-- inner join departamentos d on d.idDep=e.departamento
-- where presupuesto >60000;

-- 2.13 Obtener los datos de los departamentos cuyo presupuesto es superior al presupuesto medio de todos los departamentos.
-- select * from departamentos
-- where presupuesto > (
-- select avg(presupuesto) from departamentos);

-- 2.14 Obtener los nombres (únicamente los nombres) de los departamentos que tienen más de dos empleados.


-- 2.15 Añadir un nuevo departamento: 'Calidad', con presupuesto de 40.000 € y
-- código 11. Añadir un empleado vinculado al departamento recién creado:
-- Esther Vázquez, DNI: 89267109.
-- insert into departamentos(idDep,nombre,presupuesto)
-- values (11,"Calidad",40000);
-- insert into empleados(dni,nombre,apellidos,departamento)
-- values(89267109,"Esther", "Vázquez",11);

-- 2.16 Aplicar un recorte presupuestario del 10 % a todos los departamentos.
-- update departamentos
-- set presupuesto=presupuesto*0.9;

-- 2.17 Reasignar a los empleados del departamento de investigación (código 77) al departamento de informática (código 14).
-- update empleados
-- set departamento=14
-- where departamento=77;

-- 2.18 Despedir a todos los empleados que trabajan para el departamento de informática a (código 14).
-- delete from empleados
-- where departamento=14;

-- 2.19 Despedir a todos los empleados que trabajen para departamentos cuyo presupuesto sea superior a los 60.000 €.


-- 2.20 Despedir a todos los empleados
-- delete from empleados;