-- [Thực hành] Chỉ mục trong MySql
use classicmodels;
SELECT 
    *
FROM
    customers
WHERE
    customerName = 'Land of Toys Inc.'; 
	
EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.'; 
ALTER TABLE customers ADD INDEX idx_customerName(customerName);
    
ALTER TABLE customers ADD INDEX idx_full_name(contactFirstName, contactLastName);
EXPLAIN SELECT * FROM customers WHERE contactFirstName = 'Jean' OR contactFirstName = 'King';