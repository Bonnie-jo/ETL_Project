-- Create Database called Mortality
-- Create Table for red_clean.csv
DROP TABLE red_clean;

Create Table red_clean(
	Country VARCHAR,
	GDP money,
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

SELECT who_clean.year, who_clean.region, who_clean.Country, who_clean.Land_Area,
red_clean.GDP/1000000000 as GDP_in_billions, round(red_clean.population,0) as Population, 
who_clean.Mortality, round(red_clean.ChildMortality,2) as Child_Mortality , 
round(red_clean.MaternalMortality,2) as Maternal_Mortality  FROM red_clean
	JOIN who_clean
	ON red_clean.country = who_clean.country
	where who_clean.mortality is not null;	


