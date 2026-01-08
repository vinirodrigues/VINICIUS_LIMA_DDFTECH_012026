-- 1. Total de pedidos por status
SELECT
    order_status,
    COUNT(*) AS total_pedidos
FROM orders
GROUP BY order_status
ORDER BY total_pedidos DESC;


-- 2. Total de pedidos por estado do cliente
SELECT
    c.customer_state,
    COUNT(o.order_id) AS total_pedidos
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY total_pedidos DESC;


-- 3. Top 10 categorias de produtos mais vendidas
SELECT
    p.product_category_name,
    COUNT(oi.order_id) AS total_itens_vendidos
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY total_itens_vendidos DESC
LIMIT 10;


-- 4. Ticket médio por pedido
SELECT
    AVG(preco_total) AS ticket_medio
FROM (
    SELECT
        order_id,
        SUM(price) AS preco_total
    FROM order_items
    GROUP BY order_id
) sub;


-- 5. Volume de pedidos por mês
SELECT
    DATE_TRUNC('month', order_purchase_timestamp) AS mes,
    COUNT(order_id) AS total_pedidos
FROM orders
GROUP BY mes
ORDER BY mes;
