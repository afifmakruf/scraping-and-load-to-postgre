-- Create database ottencoffee_db
CREATE DATABASE ottencoffee_db;

-- Create a coffee table with the conditions:
CREATE TABLE coffee (                               
id					    SERIAL PRIMARY KEY,             
product					VARCHAR(255)NOT NULL,       
price					INTEGER		NOT NULL,       
rating					FLOAT		NULL,         
sold					INTEGER		NULL,
image                   TEXT,
link                    TEXT
);


-- Load Data to coffee table
COPY coffee(product, price, rating, sold, image, link)           
FROM '/private/var/tmp/otten_coffee.csv'   
DELIMITER ','                                       
CSV HEADER;                                         

-- Check The Table
SELECT * FROM coffee;                               