-- Código SQL para crear las tablas y datos del ejercicio

-- Crear tabla de cabecera de facturas
CREATE TABLE invoice_header (
    invoice_id INT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    invoice_date DATE NOT NULL
);

-- Crear tabla de detalle de facturas
CREATE TABLE invoice_details (
    invoice_id INT NOT NULL,
    item_name VARCHAR(255) NOT NULL,
    unit_price_pesos DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (invoice_id, item_name),
    FOREIGN KEY (invoice_id) REFERENCES invoice_header(invoice_id)
);

-- Crear tabla de historial de cotización del dólar
CREATE TABLE exchange_rate (
    exchange_date DATE PRIMARY KEY,
    usd_to_peso_rate DECIMAL(10, 4) NOT NULL
);

-- Insertar datos en invoice_header
INSERT INTO invoice_header (invoice_id, customer_name, invoice_date) VALUES
(1, 'John Doe', '2024-12-30'),
(2, 'Jane Smith', '2025-01-02'),
(3, 'Alice Brown', '2025-01-08');

-- Insertar datos en invoice_details
INSERT INTO invoice_details (invoice_id, item_name, unit_price_pesos, quantity) VALUES
(1, 'item1', 100.00, 3),
(1, 'item2', 50.00, 5),
(2, 'item3', 200.00, 2),
(3, 'item4', 300.00, 1),
(3, 'item5', 150.00, 4);

-- Insertar datos en exchange_rate
INSERT INTO exchange_rate (exchange_date, usd_to_peso_rate) VALUES
('2024-12-31', 202.0000),
('2025-01-01', 200.0000),
('2025-01-03', 195.0000),
('2025-01-04', 192.0000),
('2025-01-06', 190.0000);

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