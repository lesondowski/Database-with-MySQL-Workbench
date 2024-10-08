- Create data using mintclassicsDB.sql file

- analysis code in mintclassicsDBmain.sql file

- code to create primary key and secondary key in keymintclassicsDB.sql file

1. `warehouses` table

`warehouseCode`: Warehouse code (primary key).

`warehouseName`: Warehouse name.

`warehousePctCap`: Warehouse capacity percentage.

2. `products` table

`productCode`: Product code (primary key).

`productName`: Product name.

`productLine`: Product line that the product belongs to (linked to the `productlines` table).

`productScale`: Product scale (size, weight).

`productVendor`: Product supplier.

`productDescription`: Product description.

`quantityInStock`: Product inventory quantity.

`warehouseCode`: Warehouse code that the product is stored in (linked to the `warehouses` table).

`buyPrice`: Product purchase price.

`MSRP`: Manufacturer's Suggested Retail Price.

3. `productlines` table

`productLine`: Product line name (primary key).

`textDescription`: Short description of the product line.

`htmlDescription`: More detailed description in HTML format.

`image`: Image of the product line.

4. `orderdetails` table

`orderNumber`: Order number (foreign key to `orders` table).

`productCode`: Product code (foreign key to `products` table).

`quantityOrdered`: Quantity of products ordered in the order.

`priceEach`: Price of each product.

`orderLineNumber`: Order number of the line in the order.

5. `orders` table

`orderNumber`: Order number (primary key).

`orderDate`: Order date.

`requiredDate`: Requested delivery date.

`shippedDate`: Delivery date.

`status`: Order status.

`comments`: Comments about the order.

`customerNumber`: Customer number (linked to `customers` table).

6. `customers` table

`customerNumber`: Customer number (primary key).

`customerName`: Customer name.

`contactLastName`: Contact's last name.

`contactFirstName`: Contact's first name.

`phone`: Contact phone number.

`addressLine1`, `addressLine2`: Customer address.

`city`: City.

`state`: State or province.

`postalCode`: Postal code.

`country`: Country.

`salesRepEmployeeNumber`: Salesperson code (linked to `employees` table).

`creditLimit`: Customer credit limit.

7. `employees` table

`employeeNumber`: Employee code (primary key).

`lastName`: Employee last name.

`firstName`: Employee first name.

`extension`: Contact number.

`email`: Employee email.

`officeCode`: Office code where employee works (linked to `offices` table).

`reportsTo`: Employee direct manager code.

`jobTitle`: Employee job title.

8. `offices` table

`officeCode`: Office code (primary key).

`city`: City of the office.

`phone`: Office phone number.

`addressLine1`, `addressLine2`: Office address.

`state`: State or province.

`country`: Country.

`postalCode`: Postal code.

`territory`: Area where the office operates.

9. `payments` table

`customerNumber`: Customer number (linked to `customers` table).

`checkNumber`: Payment slip number.

`paymentDate`: Payment date.

`amount`: Payment amount.
