-- total inventory quantity in each warehouse

select warehouses.warehouseCode , sum(warehouses.quantityInStock) as total_quantityInStock from products warehouses
group by warehouses.warehouseCode;

-- total Capacity per warehouse
select 
	warehouses.warehouseCode,
    Sum(CAST(SUBSTRING_INDEX(products.productScale, ':', 1) as float4) /  CAST(SUBSTRING_INDEX(products.productScale, ':', -1) AS float4) * products.quantityInStock)
	as total_contain
from products
	join warehouses on products.warehouseCode = warehouses.warehouseCode
	group by warehouses.warehouseCode;
-- 

select products.productName, avg(orderdetails.priceEach * orderdetails.quantityOrdered) as averageOrderValue
from orderdetails 
join products on orderdetails.productCode = products.productCode
group by products.productName;

-- sales area
select customers.country, COUNT(orders.orderNumber) AS total_orders
from customers 
join orders  on customers.customerNumber = orders.customerNumber
group by  customers.country
order by total_orders desc;

-- Customer group

select customers.customerName, COUNT(orders.orderNumber) AS total_orders
from customers 
join orders  on customers.customerNumber = orders.customerNumber
group by customers.customerName
order by total_orders desc	
limit 24;

-- Delivery and order canceled

select orders.status, COUNT(orderNumber) AS total_orders
from orders
group by orders.status;

-- products can be purchased together
SELECT 
    order1.productCode AS product1, order2.productCode AS product2, COUNT(*) AS frequency
FROM 
    orderdetails order1
JOIN orderdetails order2 ON order1.orderNumber = order2.orderNumber AND order1.productCode <> order2.productCode
GROUP BY product1, product2
ORDER BY frequency DESC
limit 20;

-- Sales of sales numbers follow immediately
SELECT 
    DATE(orders.orderDate) AS order_date, 
    COUNT(orders.orderNumber) AS total_orders, 
    SUM(orderdetails.priceEach * orderdetails.quantityOrdered) AS total_revenue
FROM 
    orders 
JOIN 
    orderdetails ON orders.orderNumber = orderdetails.orderNumber
GROUP BY 
    DATE(orders.orderDate);
    
