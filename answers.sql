-- Question 1: -- Retrieve firstName, lastName, email, and officeCode of all employees using an INNER JOIN with offices
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;

-- Question 2: -- Retrieve productName, productVendor, and productLine from products with corresponding product line details
SELECT p.productName, p.productVendor, p.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;

-- Question 3 : -- Retrieve orderDate, shippedDate, status, and customerNumber for the first 10 orders using a RIGHT JOIN
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
LIMIT 10;

