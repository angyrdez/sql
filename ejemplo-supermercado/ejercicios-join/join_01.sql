
/*EJERCICIOS PARA PRACTICAR EL USO DE JOIN*/

/*1. Consulta de productos y sus proveedores:
Escribe una consulta que muestre el nombre del producto, su proveedor y el nombre de la empresa del proveedor.
*/

select p.nombre as Producto, pr.empresa as Empresa
from productos p 
inner join proveedores pr
on p.id_proveedor = pr.id ;


/*2. Consulta de ventas con detalles de productos:
Escribe una consulta que muestre el número de factura, la fecha de venta y los detalles de los 
productos vendidos, incluyendo el nombre del producto y la cantidad vendida.*/


SELECT 
	v.id_factura as IdFactura, 
	f.fecha as FechaVenta, 
	p.nombre as NombreProductos, 
	vp.cantidad as CantidadVendida
from ventas v
join facturas f on v.id_factura = f.id
join ventas_productos vp on v.id = vp.id_venta 
join productos p on vp.id_producto = p.id;


/*3. Consulta de empleados y sus ventas:
Escribe una consulta que muestre el nombre y apellido de cada empleado, junto con el número de ventas realizadas por cada uno.
*/

select e.nombre , e.apellido 
from empleados e 
join ventas v on e.id  = v.id_empleado ;



/*4. Consulta de clientes y sus compras:
Escribe una consulta que muestre el nombre y apellido de cada cliente, junto con el número de compras realizadas por cada uno.*/

SELECT
  c.nombre,
  c.apellido,
  COUNT(vc.id) AS numero_compras
FROM
  clientes c
JOIN compras_clientes cc ON c.id = cc.id_cliente
JOIN ventas vc ON cc.id_venta = vc.id
GROUP BY
  c.id, c.nombre, c.apellido
ORDER BY
  c.apellido, c.nombre;


/*5. Consulta de facturas y sus detalles:
Escribe una consulta que muestre el número de factura, la fecha y hora de emisión, y los detalles de la factura, 
incluyendo la descripción del producto y el importe total de cada factura.*/
 
 select f.numero as "Número Factura" , f.fecha , f.hora as "Hora de emisión", fd.descr_factura as "Detalles Factura" , f.importe_total as "Importe total"
 from facturas f
 join facturas_detalles fd  on f.id = fd.id_factura;


