# Lab 1 — Environment Setup and SQLite Fundamentals

**Course:** IA 645 — Data Analytics for Cybersecurity  
**Instructor:** Aaron Liske | aliske1@emich.edu  
**Week:** 1  
**Points:** 45  
**Due:** Check Canvas for exact due date

---

## Objective

Verify your course environment is working correctly and demonstrate basic SQL querying against a security log database.

## Background

This lab establishes your working environment for the rest of the semester. You will confirm that Docker, JupyterLab, Python, and SQLite are all functioning correctly, then perform your first queries against a real-format authentication log dataset. The dataset contains login events from a simulated enterprise environment — some legitimate, some suspicious.

## Dataset

`week1/datasets/auth_log/auth_log.db and auth_log.csv`

## Requirements


### Part 1 — Environment Verification

- Start the course Docker container using start_ia645.bat
- Open JupyterLab at http://localhost:8888
- Open lab1_notebook.ipynb
- Run the environment verification cell — confirm all packages import successfully and versions print correctly
- Take a screenshot of the successful output

### Part 2 — Load and Inspect the Dataset

- Load auth_log.csv into a pandas DataFrame
- Display the first 10 rows using .head(10)
- Use .info() to display column names, data types, and null counts
- Use .describe() on the numeric columns
- Use .value_counts() on the event_type column
- Answer in your write-up: How many records are in the dataset? What columns exist? What event types are present and in what proportion?

### Part 3 — SQLite Queries

- Connect to auth_log.db using sqlite3
- Query 1: Count total records in the auth_log table
- Query 2: Count SUCCESS vs FAILED events
- Query 3: List the top 10 usernames by total login attempts (both success and fail)
- Query 4: List all unique source IP addresses that appear in the dataset
- Query 5: Find all events where the port is 22 (SSH) — how many are there?
- Query 6 (challenge): Find the earliest and latest timestamp in the dataset

### Part 4 — Reflection

- In your write-up, answer: What is the difference between loading data in pandas vs querying it in SQLite? When would you prefer each approach?
- Note any events or patterns that seem unusual to you at first glance — you will investigate these more deeply in later labs

---

## Submission

- A written lab report (Word or PDF) containing:
-   - Screenshot of successful environment verification
-   - Your answers to all reflection questions
-   - Output of each SQL query (copy/paste results)
-   - Brief description of what the dataset represents and what you observed
- Your completed Jupyter notebook (.ipynb) with all cells executed

Submit via Canvas as a single zip or upload each file separately. All files must be submitted before the due date.

---

## Grading Rubric

| Component | Points |
|-----------|--------|
| Environment verification screenshot | 10 |
| Dataset loaded and inspected correctly — all methods used | 15 |
| All 6 SQL queries written and executed correctly | 15 |
| Written reflection — quality of answers and observations | 5 |
| **Total** | **45** |

---

## AI Use Policy

AI tools may be used to help understand syntax errors or debug code. All written reflection answers must be your own analysis of this specific dataset.

---

*All materials are for enrolled IA 645 students only.*