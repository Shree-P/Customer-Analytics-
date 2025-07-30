CREATE TABLE "mytable" (
  "-- 02_cohort_analysis.sql" text
);

INSERT INTO "mytable" ("-- 02_cohort_analysis.sql")
VALUES
('-- Monthly cohort retention analysis to understand customer retention patterns'),
('WITH customer_cohorts AS ('),
('SELECT'),
('customer_id'),
('DATE_TRUNC(''month'''),
('FROM orders'),
('GROUP BY customer_id'),
(')'),
('orders_with_cohort AS ('),
('SELECT'),
('o.customer_id'),
('o.order_date'),
('DATE_TRUNC(''month'''),
('c.cohort_month'),
('FROM orders o'),
('JOIN customer_cohorts c ON o.customer_id = c.customer_id'),
(')'),
('SELECT'),
('cohort_month'),
('order_month'),
('COUNT(DISTINCT customer_id) AS num_customers'),
('FROM orders_with_cohort'),
('GROUP BY cohort_month'),
('ORDER BY cohort_month');
