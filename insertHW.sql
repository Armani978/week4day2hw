-- INSERT INTO customer(customerID, customerAge, customerName) VALUES
-- (01, 35, 'Phil'),
-- (02, 22, 'John'),
-- (03, 44, 'Lisa'),
-- (87, 30, 'Raul'),
-- (42, 29, 'Hector');

-- INSERT INTO concession(concessionNum,customerID,itemPrice) VALUES
-- (1,01,9),
-- (5,02,72),
-- (2,03,4),
-- (4,87,7),
-- (3,42,5);


-- INSERT INTO movie(movieTime, movieName, customerID, ticketID) VALUES
-- (4, 'The Willows', 01 , 5),
-- (7, 'New Moon', 02, 2),
-- (8, 'The Willow', 03, 8),
-- (11, 'River', 42, 1);

INSERT INTO ticket(ticketID, movieName, customerID, movieTime) VALUES
( 5, 'The Willows', 01, 7),
( 2, 'New Moon', 02, 2),
( 8, 'The Willow', 03, 12),
( 1, 'River', 42, 11);