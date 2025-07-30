CREATE TABLE "mytable" (
  "-- 03_churn_prediction.sql" text
);

INSERT INTO "mytable" ("-- 03_churn_prediction.sql")
VALUES
('-- Identify customers at high risk of churn based on order frequency and recency'),
('WITH customer_metrics AS ('),
('SELECT'),
('customer_id'),
('MAX(order_date) AS last_order_date'),
('COUNT(*) AS order_count'),
('AVG(DATE_PART(''day'''),
('PARTITION BY customer_id ORDER BY order_date'),
('))) AS average_order_frequency'),
('FROM orders'),
('GROUP BY customer_id'),
(')'),
('SELECT'),
('customer_id'),
('last_order_date'),
('CURRENT_DATE - last_order_date AS days_since_last_order'),
('average_order_frequency'),
('CASE'),
('WHEN CURRENT_DATE - last_order_date > (average_order_frequency * 2) THEN ''High Risk'''),
('ELSE ''Active'''),
('END AS churn_risk'),
('FROM customer_metrics;');
