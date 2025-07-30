CREATE TABLE "mytable" (
  "-- 05_seasonal_patterns.sql" text
);

INSERT INTO "mytable" ("-- 05_seasonal_patterns.sql")
VALUES
('-- Analyze seasonal purchase patterns by month and product category'),
('SELECT'),
('DATE_TRUNC(''month'''),
('c.category_name'),
('COUNT(*) AS total_orders'),
('SUM(oi.order_value) AS revenue'),
('FROM orders o'),
('JOIN order_items oi ON o.order_id = oi.order_id'),
('JOIN products p ON oi.product_id = p.product_id'),
('JOIN categories c ON p.category_id = c.category_id'),
('GROUP BY 1'),
('ORDER BY 1');
