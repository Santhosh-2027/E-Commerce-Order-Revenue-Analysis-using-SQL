
CREATE DATABASE olist_ecommerce;
USE olist_ecommerce;

-- PHASE 1: ORDER HEALTH

SELECT * FROM olist_orders_dataset;
-- Order distribution by status 

SELECT  order_status,COUNT(order_id) AS total_orders 
FROM olist_orders_dataset
GROUP BY order_status ;-

-- What % of orders are delivered? 

SELECT 
    COUNT(order_id) AS total_orders,
    SUM(CASE 
            WHEN order_status = 'delivered' THEN 1 
            ELSE 0 
        END) AS delivered_orders,
    ROUND(
        SUM(CASE 
                WHEN order_status = 'delivered' THEN 1 
                ELSE 0 
            END) * 100.0 / COUNT(order_id),
        2
    ) AS delivered_percentage
FROM olist_orders_dataset;

-- Among non-delivered orders, which order_status occurs the most? 

SELECT  order_status,COUNT(order_id) AS total_orders 
FROM olist_orders_dataset
WHERE order_status <> 'delivered'
GROUP BY order_status
ORDER BY total_orders DESC;

--  PHASE 2: REVENUE ANALYSIS

-- What is the total revenue generated from delivered orders?

SELECT ROUND(SUM(ot.price),2) AS total_revenue ,od.order_status 
FROM olist_order_items_dataset ot 
LEFT JOIN olist_orders_dataset od 
ON ot.order_id=od.order_id 
WHERE od.order_status = 'delivered' 
 ;
 
 -- Which product categories generate the highest revenue from delivered orders?
 
 SELECT op.product_category_name,
         ROUND(SUM(ot.price),2) AS total_revenue ,od.order_status 
 FROM  olist_order_items_dataset ot
 JOIN  olist_orders_dataset od 
	  ON ot.order_id=od.order_id
 JOIN olist_products_dataset op 
      ON op.product_id=ot.product_id
 WHERE order_status = 'delivered'
 GROUP BY op.product_category_name 
 ORDER BY  total_revenue DESC  ;

-- Which payment methods are most used for delivered orders? 

SELECT op.payment_type, 
       COUNT(DISTINCT od.order_id) AS no_of_order
FROM olist_order_payments_dataset op 
LEFT JOIN olist_orders_dataset od 
 ON op.order_id=od.order_id 
 WHERE od.order_status= 'delivered'
 GROUP BY  op.payment_type
 ORDER BY no_of_order DESC ;
 
 -- Which customer states have the highest number of delivered orders? 
 
 SELECT cd.customer_state,COUNT(DISTINCT od.order_id) AS highest_number_of_deleivered_orders 
 FROM olist_customers_dataset cd 
 LEFT JOIN olist_orders_dataset od 
 ON cd.customer_id=od.customer_id
 WHERE od.order_status='delivered' 
 GROUP BY cd.customer_state
 ORDER BY highest_number_of_deleivered_orders  DESC ;



 
 

 
 

 
 
 
 