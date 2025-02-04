-- Enunciado:
-- Existen tres tablas en una base de datos. El objetivo es calcular el precio total de cada factura en dólares,
-- utilizando la cotización del dólar al momento que se emitió la factura.
-- No se permite el uso de tablas temporales para la resolución del problema.

-- 1. Tablas:
--   - La primera tabla contiene la cabecera de las facturas con los campos: invoice_id (ID de la factura), customer_name (nombre del cliente) e invoice_date (fecha de la factura).
--   - La segunda tabla contiene el detalle de las facturas con los campos: invoice_id (ID de la factura), item_name (nombre del artículo), unit_price_pesos (precio unitario en pesos) y quantity (cantidad).
--   - La tercera tabla almacena el historial de la cotización del dólar con los campos: exchange_date (fecha de la cotización) y usd_to_peso_rate (tasa de cambio USD a pesos).

-- 2. Tarea:
-- Escribe una consulta que liste todas las facturas (sin mostrar los detalles) con el precio total expresado en dólares, 
-- utilizando la cotización del dólar al momento que se emitió la factura.

-- 3. Restricciones:
-- No se deben usar tablas temporales para resolver el problema.

-- Tablas con datos de ejemplo

-- Tabla: invoice_header
-- +------------+---------------+--------------+
-- | invoice_id | customer_name | invoice_date |
-- +------------+---------------+--------------+
-- |          1 | John Doe      | 2024-12-30   |
-- |          2 | Jane Smith    | 2025-01-02   |
-- |          3 | Alice Brown   | 2025-01-08   |
-- +------------+---------------+--------------+

-- Tabla: invoice_details
-- +------------+-----------+------------------+----------+
-- | invoice_id | item_name | unit_price_pesos | quantity |
-- +------------+-----------+------------------+----------+
-- |          1 | item1     |            100.00 |        3 |
-- |          1 | item2     |             50.00 |        5 |
-- |          2 | item3     |            200.00 |        2 |
-- |          3 | item4     |            300.00 |        1 |
-- |          3 | item5     |            150.00 |        4 |
-- +------------+-----------+------------------+----------+

-- Tabla: exchange_rate
-- +---------------+------------------+
-- | exchange_date | usd_to_peso_rate |
-- +---------------+------------------+
-- | 2024-12-31    |          202.0000 |
-- | 2025-01-01    |          200.0000 |
-- | 2025-01-03    |          195.0000 |
-- | 2025-01-04    |          192.0000 |
-- | 2025-01-06    |          190.0000 |
-- +---------------+------------------+

-- Resultado esperado
--+------------+---------------+--------------+-------------+
--| invoice_id | customer_name | invoice_date | total_usd   |
--+------------+---------------+--------------+-------------+
--|          1 | John Doe      | 2024-12-30   | 0.00        |
--|          2 | Jane Smith    | 2025-01-02   | 2.00        |
--|          3 | Alice Brown   | 2025-01-08   | 2.37        |
--+------------+---------------+--------------+-------------+


-- *** Inserta tu consulta aquí ***