# Family Spending Tracker Database

This repository contains three SQL files for the Family Spending Tracker App Database. The database is designed to track and manage family expenses using PostgreSQL as the database management system.

## Table of Contents
- Database Overview
- File Descriptions
- Installation
- Usage

## Database Overview
The Family Spending Tracker App Database is designed to store and manage data related to family members, expense categories, and individual expenses. It provides a structured way to track and analyze family spending.

The database consists of the following tables:

- **family_member**: Stores information about each family member, including their unique identifier, name and email.
- **expense_category**: Contains a list of expense categories to classify expenses, such as groceries, utilities, entertainment, etc.
- **expense**: Records individual expenses made by family members, including details such as the expense amount, description, date, and the associated family member and expense category.

![ERD Diagram](https://github.com/archerppp/family-spending-tracker-db/blob/main/erd.png)

## File Descriptions
This repository includes the following SQL files:

1. **create_table.sql**: Defines the table structures for the family_member, expense_category, and expense tables. This file should be executed first to create the necessary tables in the database.
2. **add_sample_data.sql**: Provides sample data to populate the family_member, expense_category, and expense tables. It includes INSERT statements to add some pre-defined records, which can be used for testing or demonstration purposes.
3. **query_use_cases.sql**: Contains example SQL queries that demonstrate various use cases for analyzing family spending. These queries can help you retrieve valuable insights from the database, such as total expenses per category, expenses by family member, and more.

## Installation
To set up the Family Spending Tracker App Database, follow these steps:

Ensure that you have PostgreSQL installed on your machine or server.

Create a new database in PostgreSQL that will be used for the Family Spending Tracker App.

Execute the create_table.sql file against the newly created database. This will create the necessary tables.

Execute the add_sample_data.sql file if you want to populate the tables with sample data. This step is optional but can be helpful for testing and understanding the database structure.

## Usage
To make use of the Family Spending Tracker App Database, you can:

Execute the queries in the query_use_cases.sql file to retrieve insights and analyze family spending patterns.

Here are 9 use cases that provided in the query_use_cases.sql:
1. Add category
2. Add expense
3. Retrieve last 30 Days of Spendings
4. Retrieve last 30 Days of Spending in a specific category
5. Retrieve total amount spent in the last 30 Days
6. Retrieve the total amount spent by each family member in the last 30 days
7. Retrieve historical spending by Month
8. Retrieve the spending of each category over the Last 30 Days
9. Retrieve the spending of each Category by month



