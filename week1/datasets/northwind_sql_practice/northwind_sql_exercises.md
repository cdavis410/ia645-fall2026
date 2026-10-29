# Week 1 — SQL Practice Exercises (Northwind)

Work through these exercises in order. Each builds on the previous.
Connect to northwind.db using sqlite3 in your Jupyter notebook.

---

## Part 1 — Basic SELECT

1. List all products and their unit prices
2. List all customers and their countries
3. List all employees — first name, last name, title
4. How many products are in the database?
5. How many orders have been placed in total?

---

## Part 2 — WHERE and Filtering

6. List all products where the unit price is greater than $20
7. List all customers from Germany
8. List all orders placed in 1997 (hint: use LIKE or strftime on OrderDate)
9. List all products that are discontinued (Discontinued = 1)
10. List all employees hired after January 1, 1993

---

## Part 3 — ORDER BY and LIMIT

11. List the top 10 most expensive products by unit price
12. List the 5 most recently placed orders
13. List all customers sorted alphabetically by country, then company name

---

## Part 4 — Aggregation

14. How many customers are in each country? (COUNT + GROUP BY)
15. What is the average unit price of all products?
16. What is the total number of orders per employee? (JOIN Orders to Employees)
17. Which product category has the most products?
18. What is the total quantity ordered for each product? (SUM on Order Details)

---

## Part 5 — JOINs

19. List all orders with the customer company name (JOIN Orders to Customers)
20. List all order details with product names and unit prices
21. List all orders handled by employee "Davolio" with customer names
22. Find the top 5 customers by total order value (JOIN + SUM + GROUP BY + ORDER BY)

---

## Bridge Exercise — Connecting to Security

Consider this: the auth_log table you worked with in Lab 1 is not so different from the Orders table here.

- Customers → Usernames
- Orders → Login events
- OrderDate → Timestamp
- EmployeeID → Source IP

Write a query that finds the top 5 usernames by number of login attempts in auth_log.
Then write the equivalent query that finds the top 5 customers by number of orders in Northwind.
Compare the two queries side by side — the structure is identical.
