-- ══════════════════════════════════════════
-- TechStore — Consultas Básicas SELECT
-- Autor: Marina Mónaco
-- Fecha: 04-09-2026
-- ══════════════════════════════════════════

-- Consulta 1: Exploración general de la tabla sales
Select * From sales --se utiliza select * porque se quieren ver todas las columnad e la tabal, para los casos donde se quieren ver columnas específicas de la tabla, las mismas se deben nombrar separadas por comas

-- Consulta 2: Selección de columnas específicas para finanzas
Select customer_id,product_id,total_amount From sales

-- Consulta 3: Selección con alias en español para stakeholders
Select order_date as fecha_pedido,
       product_name as nombre_producto,
       quantity as cantidad_unidades
from sales
