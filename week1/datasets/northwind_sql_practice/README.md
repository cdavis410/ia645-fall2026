# Dataset — Week 1: Northwind (SQL practice)

**Source:** jpwhite3/northwind-SQLite3 (GitHub)
**Purpose:** SQL fundamentals practice before applying queries to security data

---

## Tables

| Table | Records | Description |
|-------|---------|-------------|
| Customers | 93 | Company customers |
| Orders | 16,282 | Customer orders |
| Order Details | 609,283 | Line items per order |
| Products | 77 | Product catalog |
| Employees | 9 | Sales employees |
| Suppliers | 29 | Product suppliers |
| Categories | 8 | Product categories |
| Shippers | 3 | Shipping companies |

---

## Key Relationships

- Customers → Orders (one customer, many orders)
- Orders → Order Details (one order, many line items)
- Order Details → Products (each line item references a product)
- Products → Categories (each product belongs to a category)
- Products → Suppliers (each product has a supplier)
- Orders → Employees (each order is handled by an employee)

---

## Why Northwind?

Northwind lets you learn SQL syntax on a familiar, well-documented schema before applying the same techniques to security log data. Every query pattern you practice here — SELECT, WHERE, GROUP BY, JOIN, aggregation — transfers directly to threat hunting queries in Week 3 (Lab 4) and beyond.
