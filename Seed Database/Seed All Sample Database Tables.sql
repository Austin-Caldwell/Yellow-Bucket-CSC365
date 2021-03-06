/* SEED THE YellowBucketCSC365 DATABASE WITH SAMPLE DATA */ /* Austin Caldwell and Evan Wehr */
-- Updated 11/22/2015

USE YellowBucketCSC365
GO

INSERT INTO CustomerAddress(addressLine1, addressLine2, city, stateProvince, postalCode)
VALUES
('777 Kindgom Way', '', 'Ararat', 'New York', '13011'),
('111 Lonestar Street', '', 'Mainville', 'Ohio', '18292'),
('581 Maisly Ave.', '', 'Gateway', 'Pennsylvania', '16911'),
('196 Lighthouse Blvd.', '', 'Atlantia', 'Pennsylvania', '10222'),
('009 Endline Circle', '', 'Faraway', 'Ohio', '19990'),
('260 Geneva Hwy.', '', 'Snyder', 'Ohio', '17888'),
('282 Tulip Way', '', 'Greenhouse', 'New York', '13357'),
('985 Sunshine Ave.', '', 'Positive', 'Indiana', '15929'),
('171 Staw Lane', '', 'Brave', 'Pennsylvania', '00829'),
('200 Jogger Place', '', 'Toetown', 'West Virginia', '16600'),
('999 Papyrus Street', '', 'Jolly', 'New York', '18802'),
('875 Peanut Hwy.', '', 'Endor', 'West Virginia', '17070');

INSERT INTO Customer(firstName, lastName, email, alternateEmail, userName, userPassword, creditCard, customerAddressID)
VALUES
('Michael', 'Kearney', 'michael.kearney@fictional.net', '', 'mkearney', 'Qw9+B64CUEst1bpk9YbvQg==', 'b+5Z2yki94dXKhQxJ1oILmlnCnCue/KB', 0),
('Ethan', 'Mathews', 'ethan.mathews@fictional.net', '', 'emathews', 'dOalxexcTr+65DuTja8q3g==', 'b+5Z2yki94dgaSa1E97n+rBvsX3MOzbb', 1),
('Kenneth', 'Kutcel', 'ken.kutcel@fictional.net', '', 'kkutcel', 'dhC5KiaFD/H/7v6Y1KplNA==', 'b+5Z2yki94f/ew4Y8Wa6xwKLO1IqGlE5', 4),
('Joshua', 'Shultz', 'josh.shultz@random.org', '', 'jshultz', 'g+JlyzGPnv2Z3WJLlYLyxQ==', 'b+5Z2yki94dm1D57im/tl9PvYLZhIAmU', 5),
('House', 'Scheidler', 'house.scheidler@random.org', '', 'hscheidler', '8SQNIyNu/HsAPll4jcnfag==', 'b+5Z2yki94dsXK8wUw1ECjqwJJXqOvsV', 3),
('Austin', 'Caldwell', 'austin.caldwell@random.org', '', 'acaldwell', '7o1jteYYbeaJHG/TEsHs8A==', 'b+5Z2yki94ew39RYA4OID2L+zHeOl3Zt', 2),
('Bethany', 'Ames', 'bethany.ames@speech.org', '', 'bames', '7OHUtZyTqw4toOB/DLjRaLrvDRFdf+tK', 'VpPn67IdMGuTEU2l33Hxvg7qCLIFWoLs', 6),
('Joy', 'Decker', 'joy.decker@happiness.com', '', 'jdecker', 'MS21DJcWrRqcJ/9JLxJnbw==', 'VpPn67IdMGvnAA+NTQZEYoGQx/yNpF1G', 7),
('Katie', 'McCormick', 'katie.mccormick@spice.com', '', 'kmccormick', 'FMYl9i/6hk3BheDMWmTEhg==', 'VpPn67IdMGvGwcZtRq3RNgm+2XTQgXsx', 8),
('Becca', 'Miller', 'becca.miller@running.org', '', 'bmiller', '6N7jhctAk2JHDD7UbZ0ogw==', 'VpPn67IdMGslBweYRAy0tVT1pu+kW+RP', 9),
('Hannah', 'Miller', 'hannah.miller@instrument.org', '', 'hmiller', 'YNxp3nzwneng3AO3796S0g==', 'VpPn67IdMGsWJApLnZzPodtxR646hhMm', 10),
('Audrey', 'Humphrey', 'audrey.humphrey@history.net', '', 'ahumphrey', 'FjiT7t5Fm9xhCrorAYltUw==', 'VpPn67IdMGtWxuy8JdvCNCeLILF6Cyf5', 11);

INSERT INTO Kiosk(location, addressLine1, city, stateProvince, postalCode)
VALUES
('Walmart', '2001 Chippewa Street', 'Beaver Falls', 'Pennsylvania', '15010'),
('Rite Aid', '9010 University Way', 'Fredonia', 'New York', '10222'),
('Giant Eagle', '1000 Main St. Ext.', 'Meadville', 'Pennsylvania', '16335'),
('Target', '2039 Shopping Lane', 'Cadbury', 'Ohio', '19992');


INSERT INTO Movie(title, movieDescription, director, studio, runTime, parentalRating, genre, releaseDate)
VALUES
('Star Wars', 'A tale of intergalactic war and the discovery of family lineage.', 'George Lucas', 'Lucasfilm Studios', 125, 'PG', 'Sci-Fi', '10/10/1978'),
('The Lord of The Rings', 'Running, running,... more running. Action.', 'Steven Wier', 'Gateway Films', 160, 'PG-13', 'Fantasy', '02/26/2002'),
('The Prince and Me', 'Fall in love. Break up. Fall in love.', 'Amberly Kissinger', 'Brighthouse', 130, 'PG-13', 'Romance', '08/21/2005'),
('The Peanuts Movie', 'A lonely boy and his search for friends.', 'Charles Schultz', 'ComicsRUs', 90, 'G', 'Kids', '06/15/1995'),
('Penguins: A Documentary', 'Life of the tuxedo animals in Antarctica.', 'Abigail Davis', 'Geneva Studios', 95, 'NR', 'Documentary', '12/13/2015');


INSERT INTO Inventory(dvdBluRay, movieID, kioskID, quantityAtKiosk)
VALUES
('DVD', 0, 0, 1),
('DVD', 0, 1, 2),
('DVD', 0, 2, 1),
('DVD', 1, 0, 1),
('DVD', 1, 3, 1),
('DVD', 2, 1, 2),
('DVD', 2, 2, 2),
('Blu-Ray', 2, 3, 1),
('DVD', 3, 2, 1),
('DVD', 3, 3, 2),
('Blu-Ray', 4, 0, 1),
('Blu-Ray', 4, 1, 1),
('Blu-Ray', 4, 2, 1),
('DVD', 4, 3, 2);

UPDATE Inventory
SET inStock = 1
WHERE quantityAtKiosk > 0;

INSERT INTO Wish(customerID, movieID)
VALUES
(0, 4),
(3, 1),
(3, 3),
(7, 0),
(7, 1),
(10, 2);


INSERT INTO Rental(dateRented, dateReturned, customerID, stockID)
VALUES
('02/26/2015', NULL, 0, 5),
('02/26/2015', NULL, 1, 3),
('02/26/2015', '10/12/2015', 8, 10),
('02/26/2015', '10/11/2015', 3, 0),
('02/26/2015', NULL, 11, 9),
('02/26/2015', '10/17/2015', 9, 5),
('02/26/2015', '10/20/2015', 2, 13),
('02/26/2015', '11/22/2015', 2, 4);


INSERT INTO RentalHistory(customerID, movieID, outDate, inDate)
VALUES
(8, 4, '02/26/2015', '10/12/2015'),
(3, 0, '02/26/2015', '10/11/2015'),
(9, 2, '02/26/2015', '10/17/2015'),
(2, 4, '02/26/2015', '10/20/2015'),
(2, 1, '02/26/2015', '11/22/2015');


INSERT INTO MovieReview(datePosted, reviewDescription, rating, customerID, movieID)
VALUES
('10/12/2015', 'This movie is terrible!  I could have seen more action from traveling to Antarctica myself!', 1, 8, 4),
('10/11/2015', 'Best Sci-Fi Film Ever!!', 5, 3, 0),
('10/17/2015', 'Too Much Kissing.  Eww.', 2, 9, 2),
('10/20/2015', 'The penguins are so much fun to watch!', 4, 2, 4),
(GetDate(), 'The culture of Star Wars with the thematics of Narnia.', 5, 2, 1);

