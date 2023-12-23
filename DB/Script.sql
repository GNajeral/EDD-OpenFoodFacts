-- Use your database schema
USE base_gnajeralavid;

-- Create the Version dimension table
CREATE TABLE Version (
    nutriscore_presence VARCHAR(255),
    version_id VARCHAR(255) PRIMARY KEY
);

-- Create the First_Cube fact table
CREATE TABLE FactTable1 (
    YearCreation int,
    YearModification int,
    MonthModification int,
	barcode VARCHAR(255),
    pseudo VARCHAR(255),
    version_id VARCHAR(255),
    FOREIGN KEY (version_id) REFERENCES Version(version_id)
);