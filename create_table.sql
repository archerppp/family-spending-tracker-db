CREATE TABLE IF NOT EXISTS family_member (
	id SERIAL PRIMARY KEY,
	name TEXT,
	email TEXT
);

CREATE TABLE IF NOT EXISTS expense_category (
	id SERIAL PRIMARY KEY,
	name TEXT,
	created_by SMALLINT,
	FOREIGN KEY (created_by) REFERENCES family_member(id)
);

CREATE TABLE IF NOT EXISTS expense (
	id SERIAL PRIMARY KEY,
	amount REAL,
	paid_date DATE,
	payer_id SMALLINT,
	category_id SMALLINT,
	comment TEXT,
	created_by INTEGER,
	created_at TIMESTAMP,
	changed_at TIMESTAMP,
	FOREIGN KEY (payer_id) REFERENCES family_member(id),
	FOREIGN KEY (created_by) REFERENCES family_member(id),
	FOREIGN KEY (category_id) REFERENCES expense_category(id)
);