CREATE TABLE ds_Houses_Prices
(
    houses_prices_id	INTEGER NOT NULL,
    price	INTEGER,
    bedrooms	INTEGER,
    bathrooms	DECIMAL(5,2),
    PRIMARY KEY(houses_prices_id)
);

CREATE TABLE ds_Houses_Data
(
    houses_data_id   INTEGER NOT NULL,
    sqm_living	DECIMAL(12,2),
    sqm_lot	DECIMAL(12,2),
    sqm_above  DECIMAL(12,2),
    sqm_basement    DECIMAL(12,2),
    floors	DECIMAL(2,1),
    yr_built	INTEGER,
    yr_renovated INTEGER,
    PRIMARY KEY(houses_data_id)
);

CREATE TABLE ds_Houses_Location
(
    houses_location_id  INTEGER NOT NULL,
    street	varchar(150),
    city	varchar(100),
    statezip	varchar(100),
    country	varchar(10),
    PRIMARY KEY(houses_location_id)   
);

CREATE TABLE Houses_FACT
(
    houses_prices_id	INTEGER NOT NULL,
    houses_data_id	INTEGER NOT NULL,
    houses_location_id   INTEGER NOT NULL,
    price	INTEGER,
    bedrooms	INTEGER,
    bathrooms	DECIMAL(12,2),
    floors	DECIMAL(2,1),
    sqm_living	DECIMAL(12,2),
    yr_built	INTEGER,
    yr_renovated    INTEGER,
    city	varchar(100),
    FOREIGN KEY (houses_prices_id) REFERENCES ds_Houses_Prices(houses_prices_id),
    FOREIGN KEY (houses_data_id) REFERENCES ds_Houses_Data(houses_data_id),
    FOREIGN KEY (houses_location_id) REFERENCES ds_Houses_Location(houses_location_id)
);
