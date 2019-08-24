-- Create Database called Mortality
-- Create Table for red_clean.csv
DROP TABLE red_clean;

Create Table red_clean(
	Country VARCHAR,
	GDP real,
	Population numeric,
	LifeExp numeric,
	ChildMortality numeric, 
	MaternalMortality numeric,
	Year VARCHAR(10)
	);

SELECT * FROM red_clean;

-- Import to table from red_clean.csv

-- Create Table for who_clean.csv
DROP TABLE who_clean;

Create Table who_clean(
	Country VARCHAR,
	Mortality numeric,
	Land_Area numeric,
	Region VARCHAR,
	Year VARCHAR(10),
	Gender VARCHAR 
	);

SELECT * FROM who_clean;

SELECT * FROM red_clean
	JOIN who_clean
	ON red_clean.country = who_clean.country;	


