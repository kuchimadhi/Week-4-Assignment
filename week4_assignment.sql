-- Week 4 Database Assignment
-- Topic: Advanced SQL Queries and Aggregations
-- Database: classicmodels
-- Tables used: payments, customers, orderdetails

USE classicmodels;

-- Question 1:
-- Show the total payment amount for each payment date.
-- Sort from latest to oldest and return only the five latest dates.
SELECT
    paymentDate,
    SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Question 2:
-- Find the average credit limit for each customer and country.
SELECT
    customerName,
    country,
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country
ORDER BY customerName, country;

-- Question 3:
-- Calculate total price as quantity ordered multiplied by price per unit.
-- Group by product code and quantity ordered, as requested.
SELECT
    productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered
ORDER BY productCode, quantityOrdered;

-- Question 4:
-- Find the highest payment amount for each check number.
SELECT
    checkNumber,
    MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber
ORDER BY checkNumber;
