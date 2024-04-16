# Library Book Loan Dashboard

A Power BI dashboard built on top of a MySQL database that presents clear insights into how books are borrowed over time. It helps review user borrowing activity by genre, author, title, and publication date. The dashboard is designed to support daily tracking and analysis of book loans within a Kanban style workflow.

### Dashboard Overview
![Dashboard Overview](/screenshot%202.png)
![Dashboard Overview](/screenshot%203.png)
![Dashboard Overview](/screenshot%204.png)

## Features

- Overview of total book loans and active borrowers
- Genre wise breakdown of borrowing activity
- Borrowing trends across different time periods
- Filters for author, title, and date published
- Clear tables and charts for easy comparison
- Structured layout that fits into a Kanban workflow

## Built With

- Power BI
- MySQL

## Setup Instructions

### Requirements

- Power BI Desktop
- MySQL Server

### Clone the repository

```bash
git https://github.com/muskan-musa-khan/blog-management-dashboard.git
```

### Import the database

Import the provided SQL file into your MySQL server using MySQL Workbench or the MySQL command line.

### Open the Power BI file

Open the .pbix file using Power BI Desktop.

### Data Model

The dashboard connects to the MySQL database that stores:

- User information

- Book details

- Loan records

- Loan dates and return status


### Usage

Use the filters and visuals to:

- Review which genres are borrowed the most

- Track borrowing patterns over time

- Identify active borrowers

- Compare loan activity by author and publication year
