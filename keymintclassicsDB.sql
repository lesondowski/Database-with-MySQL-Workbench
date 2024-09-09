-- products và warehouses
ALTER TABLE products
ADD CONSTRAINT fk_products_warehouseCode
FOREIGN KEY (warehouseCode) REFERENCES warehouses(warehouseCode);

-- customers và employees (salesRepEmployeeNumber)
ALTER TABLE customers
ADD CONSTRAINT fk_customers_salesRepEmployeeNumber
FOREIGN KEY (salesRepEmployeeNumber) REFERENCES employees(employeeNumber);

-- orders và customers
ALTER TABLE orders
ADD CONSTRAINT fk_orders_customerNumber
FOREIGN KEY (customerNumber) REFERENCES customers(customerNumber);

-- orderdetails và orders
ALTER TABLE orderdetails
ADD CONSTRAINT fk_orderdetails_orderNumber
FOREIGN KEY (orderNumber) REFERENCES orders(orderNumber);

-- orderdetails và products
ALTER TABLE orderdetails
ADD CONSTRAINT fk_orderdetails_productCode
FOREIGN KEY (productCode) REFERENCES products(productCode);

-- payments và customers
ALTER TABLE payments
ADD CONSTRAINT fk_payments_customerNumber
FOREIGN KEY (customerNumber) REFERENCES customers(customerNumber);

-- employees và offices
ALTER TABLE employees
ADD CONSTRAINT fk_employees_officeCode
FOREIGN KEY (officeCode) REFERENCES offices(officeCode);

-- employees reportsTo
ALTER TABLE employees
ADD CONSTRAINT fk_employees_reportsTo
FOREIGN KEY (reportsTo) REFERENCES employees(employeeNumber);
