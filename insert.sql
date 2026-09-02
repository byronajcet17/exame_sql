-- ============================================================
-- CATEGORIAS
-- ============================================================

INSERT INTO categoria (nombre, descripcion) VALUES
('Laptops', 'Computadoras CPU'),
('Smartphones', 'Teléfonos inteligentes'),
('Accesorios', 'Accesorios y periféricos tecnológicos');

-- ============================================================
-- PROVEEDORES proposito de este proyecto es ayudar a la empŕesa a facilitar el conteo de su inventario ya que el problema que se le presenta es algo que puede afectar al rendimiento o asi mismo al servicio el cliente, ya que si en debido caso se llegan a confundir y ofrecen un producto que no ay el cliente depues de que lo allan echo esperar y depues decirle que no el cliente nl proposito de este proyecto es ayudar a la empŕesa a facilitar el conteo de su inventario ya que el problema que se le presenta es algo que puede afectar al rendimiento o asi mismo al servicio el cliente, ya que si en debido caso se llegan a confundir y ofrecen un producto que no ay el cliente depues de que lo allan echo esperar y depues decirle que no el cliente no se ira satisfcho por el mar servicio o se ira satisfcho por el mar servicio 
-- ============================================================

INSERT INTO proveedor (nombre, correo, telefono, direccion) VALUES
('Distribuidora Tech Guatemala', 'ventas@techguatemala.com', '5555-1001', 'Zona 10, Ciudad de Guatemala'),
('Global Electronics', 'ventas@globalelectronics.com', '5555-1002', 'Zona 9, Ciudad de Guatemala'),
('Importadora Digital', 'contacto@importadoradigital.com', '5555-1003', 'Zona 4, Ciudad de Guatemala');

-- ============================================================
-- CLIENTES
-- ============================================================

INSERT INTO cliente (nombre, correo, telefono) VALUES
('Carlos López', 'carlos.lopez@gmail.com', '5555-2001'),
('María García', 'maria.garcia@gmail.com', '5555-2002'),
('Juan Pérez', 'juan.perez@gmail.com', '5555-2003');

-- ============================================================
-- PRODUCTOS
-- ============================================================

INSERT INTO producto
(nombre, id_categoria, precio, stock, id_proveedor)
VALUES
('Laptop Lenovo IdeaPad 3', 1, 6500.00, 8, 1),
('Samsung Galaxy A55', 2, 3200.00, 4, 2),
('Mouse Logitech M185', 3, 150.00, 12, 3);

-- ============================================================
-- VENTAS
-- ============================================================

INSERT INTO venta (id_cliente, fecha_venta) VALUES
(1, '2026-02-15 10:30:00'),
(1, '2026-08-10 14:20:00'),
(2, '2026-08-25 16:45:00');

-- ============================================================
-- DETALLE DE VENTAS
-- ============================================================

INSERT INTO detalle_venta
(id_venta, id_producto, cantidad, precio_unitario)
VALUES
(1, 1, 1, 6500.00),
(2, 2, 2, 3200.00),
(3, 3, 3, 150.00);

-- ============================================================
-- ACTUALIZAR STOCK SEGÚN LAS VENTAS
-- ============================================================

UPDATE producto
SET stock = stock - 1
WHERE id_producto = 1;

UPDATE producto
SET stock = stock - 2
WHERE id_producto = 2;

UPDATE producto
SET stock = stock - 3
WHERE id_producto = 3;
