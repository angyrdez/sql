
 /*EJERCICIOS PARA PRACTICAR LA INSERCIÓN DE DATOS EN UNA BD*/


/*1. Inserta un nuevo proveedor llamado "Nueva Empresa" que suministra productos de tipo "Electrónicos" y tiene la dirección "Calle Principal 123".*/

 INSERT INTO proveedores (empresa, tipo_producto, direccion, nro_tel_princ,nro_tel_sec,email)values('Nueva Empresa','Electrónicos','Calle Principal 123','666666666','956372612','nuevaempresa@gmail.com');


/*2. Añade un nuevo empleado llamado "Juan Pérez" con 25 años, documento de identidad "12345678", y cargo "Cajero".*/

INSERT INTO empleados (nombre, apellido, edad, fecha_nac, tipo_doc, nro_doc, cuil, direccion, nro_tel_princ, cargo, antiguedad, fecha_ingreso, salario_anual) 
VALUES ('Juan', 'Pérez', 25, '1997-05-12', 'DNI', 12345678, 'Cuil', 'Calle secundaria 23', 666666666, 'Cajero', '1 año', '2018-06-04', 30000);


/*3. Registra un nuevo cliente llamado "Ana Gómez".*/

INSERT INTO clientes  (nombre, apellido, tipo_doc, nro_doc, nro_tel_princ, nro_tel_sec, email) 
VALUES ('Ana', 'Gómez', 'DNI', '78845612J',5551234, 955748147,'anagomez@email.com');



/*4. Agrega un nuevo producto llamado "Televisor LED" de la marca "Samsung", tipo "Electrónicos", grupo "Televisores", 
 * con un peso de 15.5 kg, precio por unidad de 500.00 y un stock inicial de 20 unidades.*/

insert into productos (id_proveedor, codigo, imagen,nombre,marca,tipo,grupo,peso,precio_unidad,stock) 
values (12,'789546ABH','Smart TV','Televisor LED','Samsung','Electrónicos', 'Televisores', 15.5,500,20);


/*5. Realiza una venta asociada al empleado con nombre "Macarena Gutierrez" y a la factura número "000057".*/

insert into ventas (id_empleado,id_factura) values (1,4);

/*6. Mostrar todas las ventas asociadas al empleado 1*/
select e.nombre AS "Nombre empleado", COUNT(v.id_factura) 
from empleados e , ventas v
where e.nombre = 'Macarena'
group by e.id;
/*where e.id = 1;*/

/*7. Todos los empleados que han realizado ventas*/
select e.id , e.nombre, e.cargo , v.id_factura 
from empleados e 
join ventas v on e.id = v.id_empleado ;



/*8. Inserta una nueva factura con número "00025", código "00123456", fecha actual, hora actual, e importe total de 1200.00.*/

select * from facturas f ;

insert into facturas (numero,codigo,fecha,hora,importe_total) values ('000023','000065478','2024-03-01','15:02:12',1542);


/*9. Registra un nuevo detalle de factura asociado a la factura creada en el punto anterior, con tipo "B", descripción "Productos varios",
 *costo asociado de 800.00, IVA de 120.00, medio de pago "TARJETA CREDITO" y descripción de pago "Pago con tarjeta".*/

insert into facturas_detalles (id_factura, tipo, descr_factura, costo_asoc,iva,medio_de_pago,descr_pago) values (7,'B','Productos varios',800,120,'TARJETA CREDITO','Pago con tarjeta');

select * from facturas_detalles fd ;

/*10. Agrega un nuevo empleado llamado "Carlos Rodríguez" con 30 años, documento de identidad "98765432", y cargo "Vendedor".*/

INSERT INTO empleados (nombre, apellido, edad, fecha_nac, tipo_doc, nro_doc, cuil, direccion, nro_tel_princ, cargo, antiguedad, fecha_ingreso, salario_anual) 
VALUES ('Carlos', 'Rodríguez', 30, '1993-02-21', 'DNI', 9876432, 'Cuil', 'Calle secundaria 23', 555666666, 'Cajero', '2 años', '2020-01-05', 25000);



