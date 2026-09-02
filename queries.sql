
-- ============================================================
-- 1. PRODUCTOS CON STOCK MENOR A 5
-- ============================================================

SELECT
    p.id_producto,
    p.nombre,
    p.stock,
    p.precio
FROM producto p
WHERE p.stock < 5
ORDER BY p.stock ASC;


-- ============================================================
-- 2. VENTAS TOTALES DE UN MES ESPECIFICO
-- Ejemplo: agosto de 2026
-- ============================================================

SELECT
    TO_CHAR(v.fecha_venta, 'YYYY-MM') AS mes,
    SUM(d.cantidad * d.precio_unitario) AS ventas_totales
FROM venta v
INNER JOIN detalle_venta d
    ON v.id_venta = d.id_venta
WHERE v.fecha_venta >= '2026-08-01'
  AND v.fecha_venta < '2026-09-01'
GROUP BY TO_CHAR(v.fecha_venta, 'YYYY-MM');

