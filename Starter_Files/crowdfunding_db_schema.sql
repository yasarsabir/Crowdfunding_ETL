-- Database: crowdfunding_db

-- Drop database if exists crowdfunding_db;
-- Drop table if exists

DROP TABLE IF EXISTS campaign; 
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;


--Create contacts table
CREATE TABLE contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
	PRIMARY KEY (contact_id)
);
-- View the contacts table
SELECT * FROM contacts;

--Create category table
CREATE TABLE category (
    category_id VARCHAR NOT NULL,
    category VARCHAR NOT NULL,
	PRIMARY KEY (category_id)
);
-- View the category table
SELECT * FROM category;

--Create subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR NOT NULL,
    subcategory VARCHAR NOT NULL,
	PRIMARY KEY (subcategory_id)
);
-- View the subcategory table
SELECT * FROM subcategory;

--Create campaign table
CREATE TABLE campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    goal DOUBLE PRECISION NOT NULL,
    pledged DOUBLE PRECISION NOT NULL,
    outcome VARCHAR NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR NOT NULL,
    currency VARCHAR NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR NOT NULL,
    subcategory_id VARCHAR NOT NULL,
	PRIMARY KEY (cf_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
ALTER DATABASE starter_code SET datestyle TO "ISO, MDY";
-- View the campaign table
SELECT * FROM campaign;