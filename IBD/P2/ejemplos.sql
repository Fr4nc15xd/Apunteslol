INSERT INTO productlines (productLine, textDescription) 
VALUES ('Drones', 'Modelos a escala de drones comerciales y militares');
-------------------------------------------------------------------------
UPDATE products SET quantityInStock = quantityInStock - 20 
	WHERE productVendor = 'Exoto Designs' AND quantityInStock > 100;
-------------------------------------------------------------------------
DELETE FROM customers WHERE customerNumber = 501;
-------------------------------------------------------------------------
WITH TotalCliente AS (
  SELECT o.customerNumber, SUM(od.quantityOrdered * od.priceEach) AS total 
	FROM orders o 
	JOIN orderdetails od ON o.orderNumber = od.orderNumber 
	GROUP BY o.customerNumber
), PromedioGeneral AS (
	SELECT AVG(total) AS promedio 
	FROM TotalCliente
)
SELECT c.customerName, tc.total 
FROM customers c 
JOIN TotalCliente tc ON c.customerNumber = tc.customerNumber 
CROSS JOIN PromedioGeneral pg 
WHERE tc.total > pg.promedio;
