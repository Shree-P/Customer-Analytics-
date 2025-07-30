CREATE TABLE "mytable" (
  "-- 04_rfm_segmentation.sql" text
);

INSERT INTO "mytable" ("-- 04_rfm_segmentation.sql")
VALUES
('-- RFM segmentation to classify customers into behavioral groups based on Recency'),
('WITH rfm AS ('),
('SELECT'),
('customer_id'),
('MAX(order_date) AS last_order_date'),
('COUNT(order_id) AS frequency'),
('SUM(order_value) AS monetary'),
('FROM orders'),
('GROUP BY customer_id'),
(')'),
('scored AS ('),
('SELECT *'),
('NTILE(5) OVER (ORDER BY CURRENT_DATE - last_order_date) AS recency_score'),
('NTILE(5) OVER (ORDER BY frequency) AS frequency_score'),
('NTILE(5) OVER (ORDER BY monetary) AS monetary_score'),
('FROM rfm'),
(')'),
('SELECT *'),
('CONCAT(''R'''),
('FROM scored;');
