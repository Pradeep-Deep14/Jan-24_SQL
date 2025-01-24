CREATE TABLE payment_companies (
         company_id INT PRIMARY KEY, 
         company_name VARCHAR(100), 
         founded_year INT
     );
     INSERT INTO payment_companies VALUES 
         (1, 'PhonePe', 2016), 
         (2, 'Paytm Payments Bank', 2016), 
         (3, 'Google Pay', 2015);

SELECT * FROM PAYMENT_COMPANIES

/*
List all digital payment companies that were founded after 2015
*/

SELECT COMPANY_NAME
FROM PAYMENT_COMPANIES
WHERE FOUNDED_YEAR > '2015'