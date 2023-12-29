-- Add a new expense category 
INSERT INTO expense_category (name, created_by) VALUES 
  ('Travel', 1);
  
-- Add a new expense
INSERT INTO expense (amount, paid_date, payer_id, category_id, comment, created_by, created_at) VALUES
  (36.8, '2023-11-23', 1, 1, 'Loblaws shopping', 1, CURRENT_TIMESTAMP);
  
-- List all expense of the whole family in the last 30 days in reverse chronological order
SELECT e.amount, e.paid_date, fm.name AS payer_name, ec.name AS category_name, e.comment
FROM expense e
JOIN family_member fm ON e.payer_id = fm.id
JOIN expense_category ec ON e.category_id = ec.id
WHERE e.paid_date >= CURRENT_DATE - INTERVAL '30 days'
ORDER BY e.paid_date DESC;

-- List expense of a category of the whole family in the last 30 days in reverse chronological order
SELECT e.amount, e.paid_date, fm.name AS payer_name, ec.name AS category_name, e.comment
FROM expense e
JOIN family_member fm ON e.payer_id = fm.id
JOIN expense_category ec ON e.category_id = ec.id
WHERE e.paid_date >= CURRENT_DATE - INTERVAL '30 days' AND ec.name = 'Grocery'
ORDER BY e.paid_date DESC;

-- Total amount spent in last 30 days
SELECT SUM(e.amount) AS "Last 30D total amount"
FROM expense e
WHERE e.paid_date >= CURRENT_DATE - INTERVAL '30 days'

-- Total amount by family member in the Last 30 days of spendings
SELECT fm.name AS family_member, SUM(e.amount) AS "Last 30D amount"
FROM expense e
JOIN family_member fm ON e.payer_id = fm.id
WHERE e.paid_date >= CURRENT_DATE - INTERVAL '30 days'
GROUP BY fm.id, fm.name;

-- Historical spending by month
SELECT TO_CHAR(DATE_TRUNC('month', paid_date), 'YYYY-MM') AS month, SUM(amount) AS total_amount
FROM expense
GROUP BY DATE_TRUNC('month', paid_date)
ORDER BY DATE_TRUNC('month', paid_date) DESC;

-- Spending of each category over the last 30 days
SELECT ec.name AS category_name, SUM(e.amount) AS '30D amount'
FROM expense e
JOIN expense_category ec ON e.category_id = ec.id
WHERE e.paid_date >= CURRENT_DATE - INTERVAL '30 days'
GROUP BY ec.name
ORDER BY ec.name;

-- Spending of each category by month
SELECT TO_CHAR(DATE_TRUNC('month', e.paid_date), 'YYYY-MM') AS month, ec.name AS category_name,
    SUM(e.amount) AS total_amount
FROM expense e
JOIN expense_category ec ON e.category_id = ec.id
GROUP BY DATE_TRUNC('month', e.paid_date), ec.name
ORDER BY DATE_TRUNC('month', e.paid_date) DESC, ec.name;
