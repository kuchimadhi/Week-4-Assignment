# Week 4 Database Assignment: Advanced SQL Queries and Aggregations

## Overview
This assignment practices SQL aggregate functions, grouping, sorting, and limiting query results using the `classicmodels` sample database.

## Assignment Questions
1. **Payments by date:** Uses `SUM(amount)` to calculate total payments per payment date, sorts dates newest first, and returns the five latest dates with `LIMIT 5`.
2. **Average customer credit limit:** Uses `AVG(creditLimit)` grouped by customer name and country.
3. **Total product price:** Calculates line value as `quantityOrdered * priceEach`, then sums that value grouped by product code and quantity ordered.
4. **Highest payment by check number:** Uses `MAX(amount)` grouped by check number.

## Files
- `week4_assignment.sql` — SQL solutions for all four questions.

## How to Run
1. Open MySQL Workbench or another MySQL client.
2. Make sure the `classicmodels` sample database is installed and selected.
3. Open `week4_assignment.sql`.
4. Run each query, or execute the script from top to bottom.

## Notes
- The script begins with `USE classicmodels;`. If your sample database has a different name, change this line to match it.
- Question 3 uses `SUM(quantityOrdered * priceEach)` to calculate the total value of order lines within each requested group (`productCode`, `quantityOrdered`).
- The queries assume the standard Classic Models column names: `paymentDate`, `amount`, `customerName`, `country`, `creditLimit`, `productCode`, `quantityOrdered`, `priceEach`, and `checkNumber`.
