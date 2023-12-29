-- Inserting sample data into the family_member table
INSERT INTO family_member (name, email) VALUES 
  ('Mum', 'mum@example.com'),
  ('Dad', 'dad@example.com');
  
  
-- Inserting sample data into the expense_category table
INSERT INTO expense_category (name, created_by) VALUES 
  ('Grocery', 1),
  ('F&B', 1),
  ('Transportation', 2),
  ('Utilities', 1);
  
-- Inserting sample data into the expense table
INSERT INTO expense (amount, paid_date, payer_id, category_id, comment, created_by, created_at) VALUES
  (100.50, '2023-12-01', 1, 1, 'Loblaws shopping', 1, CURRENT_TIMESTAMP),
  (50.25, '2023-12-03', 2, 2, 'A&W', 2, CURRENT_TIMESTAMP),
  (20, '2023-12-05', 1, 3, 'Presto', 1, CURRENT_TIMESTAMP),
  (11.1, '2023-12-06', 2, 2, 'McDonalds', 2, CURRENT_TIMESTAMP),
  (18.7, '2023-12-06', 2, 1, 'No Frills shopping', 1, CURRENT_TIMESTAMP),
  (73.62, '2023-12-07', 1, 4, 'Electricity bill', 1, CURRENT_TIMESTAMP),
  (6.3, '2023-12-08', 1, 1, 'Dollarama', 1, CURRENT_TIMESTAMP),
  (6.5, '2023-12-08', 2, 2, 'Pizza Nova', 1, CURRENT_TIMESTAMP),
  (28.2, '2023-12-09', 2, 4, 'Hydro bill', 1, CURRENT_TIMESTAMP),
  (41.1, '2023-12-10', 2, 1, 'Loblaws shopping', 1, CURRENT_TIMESTAMP),
  (53.8, '2023-12-11', 1, 2, 'Italian dinner', 1, CURRENT_TIMESTAMP);
  
 