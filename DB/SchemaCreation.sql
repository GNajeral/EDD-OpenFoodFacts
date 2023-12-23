-- Use your database schema
USE base_gnajeralavid;

-- Create the Version dimension table
CREATE TABLE Version (
    nutriscore_presence VARCHAR(4),
    nova_group VARCHAR(60),
    version_id VARCHAR(255) PRIMARY KEY
);

-- Create the Contributor dimension table
CREATE TABLE Contributor (
    pseudo VARCHAR(60) PRIMARY KEY
);

-- Create the Category dimension table
CREATE TABLE Category (
    pnns1 VARCHAR(255),
    pnns2 VARCHAR(255) PRIMARY KEY
);


-- Create the First Cube fact table
CREATE TABLE FactTable1 (
    YearCreation int,
    YearModification int,
    MonthModification int,
	barcode VARCHAR(255),
    pseudo VARCHAR(255),
    version_id VARCHAR(255),
    pnns2 VARCHAR(255),
    FOREIGN KEY (version_id) REFERENCES Version(version_id),
	FOREIGN KEY (pnns2) REFERENCES Category(pnns2)

);

-- Create the Second Cube fact table
CREATE TABLE FactTable2 (
    YearModification int,
    MonthModification int,
    pseudo VARCHAR(255),
    version_id VARCHAR(255),
    pnns2 VARCHAR(255),
    nutriscore_lettre VARCHAR(60),
    nutrition_score_fr int,
    FOREIGN KEY (version_id) REFERENCES Version(version_id),
	FOREIGN KEY (pnns2) REFERENCES Category(pnns2)

);