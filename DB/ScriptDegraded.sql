-- Use your database schema
USE base_gnajeralavid;

-- Create the OFF_2_version_produit table
CREATE TABLE fact_table (
    barcode VARCHAR(255),
    YearCreation Numeric,
    YearModification Numeric,
    MonthModification Numeric,
    pseudo VARCHAR(255),
    nutriscore_presence VARCHAR(255),
    version_id VARCHAR(255) PRIMARY KEY
);
