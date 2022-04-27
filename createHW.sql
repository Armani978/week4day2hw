DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customerID INTEGER PRIMARY KEY,
    customerAge INTEGER NOT NULL,
    customerName VARCHAR(50)
);

DROP TABLE IF EXISTS concession CASCADE;
CREATE TABLE concession(
    concessionNum SERIAL PRIMARY KEY,
    customerID INTEGER NOT NULL,
    itemPrice VARCHAR(50),
    FOREIGN KEY(customerID) REFERENCES customer(customerID)
);


DROP TABLE IF EXISTS movie CASCADE;
CREATE TABLE movie(
    movieTime INTEGER PRIMARY KEY,
    movieName VARCHAR(50) UNIQUE,
    ticketID INTEGER NOT NULL,
    customerID INTEGER NOT NULL,
    FOREIGN KEY(customerID) REFERENCES customer(customerID)
);

DROP TABLE IF EXISTS ticket CASCADE;
CREATE TABLE ticket(
    ticketID INTEGER NOT NULL,
    movieName VARCHAR(50),
    customerID INTEGER NOT NULL,
    movieTime VARCHAR(50),
    FOREIGN KEY(movieName) REFERENCES movie(movieName),
    FOREIGN KEY(customerID) REFERENCES customer(customerID)
);
