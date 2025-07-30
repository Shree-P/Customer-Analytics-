CREATE TABLE "mytable" (
  "-- 01_customer_lifetime_value.sql" text
);

INSERT INTO "mytable" ("-- 01_customer_lifetime_value.sql")
VALUES
('-- Calculate cumulative order value per customer over time'),
('SELECT'),
('customer_id'),
('order_date'),
('order_value'),
('SUM(order_value) OVER ('),
('PARTITION BY customer_id'),
('ORDER BY order_date'),
('ROWS UNBOUNDED PRECEDING'),
(') AS cumulative_value'),
('FROM orders;');
