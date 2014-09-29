

INSERT INTO `employee` (`number`, `name`, `salary`, `manager`, `birthyear`, `startyear`) VALUES
(10, 'Ross, Stanley', 15908, 199, 1927, 1945),
(11, 'Ross, Stuart', 12067, NULL, 1931, 1932),
(13, 'Edwards, Peter', 9000, 199, 1928, 1958),
(26, 'Thompson, Bob', 13000, 199, 1930, 1970),
(32, 'Smythe, Carol', 9050, 199, 1929, 1967),
(33, 'Hayes, Evelyn', 10100, 199, 1931, 1963),
(35, 'Evans, Michael', 5000, 32, 1952, 1974),
(37, 'Raveen, Lemont', 11985, 26, 1950, 1974),
(55, 'James, Mary', 12000, 199, 1920, 1969),
(98, 'Williams, Judy', 9000, 199, 1935, 1969),
(129, 'Thomas, Tom', 10000, 199, 1941, 1962),
(157, 'Jones, Tim', 12000, 199, 1940, 1960),
(199, 'Bullock, J.D.', 27000, NULL, 1920, 1920),
(215, 'Collins, Joanne', 7000, 10, 1950, 1971),
(430, 'Brunet, Paul C.', 17674, 129, 1938, 1959),
(843, 'Schmidt, Herman', 11204, 26, 1936, 1956),
(994, 'Iwano, Masahiro', 15641, 129, 1944, 1970),
(1110, 'Smith, Paul', 6000, 33, 1952, 1973),
(1330, 'Onstad, Richard', 8779, 13, 1952, 1971),
(1523, 'Zugnoni, Arthur A.', 19868, 129, 1928, 1949),
(1639, 'Choy, Wanda', 11160, 55, 1947, 1970),
(2398, 'Wallace, Maggie J.', 7880, 26, 1940, 1959),
(4901, 'Bailey, Chas M.', 8377, 32, 1956, 1975),
(5119, 'Bono, Sonny', 13621, 55, 1939, 1963),
(5219, 'Schwarz, Jason B.', 13374, 33, 1944, 1959);

INSERT INTO `items_at_department` (`item`, `department`, `qoh`, `department_name`, `department_store`, `floor`, `department_manager`, `city`, `item_name`, `item_price`) VALUES
(11, 1, 575, 'Bargain', 5, 0, 37, 'San Francisco', 'Wash Cloth', 75),
(19, 43, 600, 'Children''s', 8, 2, 32, 'El Cerrito', 'Bellbottoms', 450),
(21, 1, 405, 'Bargain', 5, 0, 37, 'San Francisco', 'ABC Blocks', 198),
(21, 49, 120, 'Toys', 8, 2, 35, 'El Cerrito', 'ABC Blocks', 198),
(23, 10, 100, 'Candy', 5, 1, 13, 'San Francisco', '1 lb Box', 215),
(25, 10, 75, 'Candy', 5, 1, 13, 'San Francisco', '2 lb Box, Mix', 450),
(26, 14, 20, 'Jewelry', 8, 1, 33, 'El Cerrito', 'Earrings', 1000),
(43, 49, 200, 'Toys', 8, 2, 35, 'El Cerrito', 'Maze', 325),
(52, 60, 300, 'Sportswear', 5, 1, 10, 'San Francisco', 'Jacket', 3295),
(101, 28, 125, 'Women''s', 8, 2, 32, 'El Cerrito', 'Slacks', 1600),
(101, 63, 325, 'Women''s', 7, 3, 32, 'Oakland', 'Slacks', 1600),
(101, 70, 225, 'Women''s', 5, 1, 10, 'San Francisco', 'Slacks', 1600),
(106, 1, 175, 'Bargain', 5, 0, 37, 'San Francisco', 'Clock Book', 198),
(106, 49, 150, 'Toys', 8, 2, 35, 'El Cerrito', 'Clock Book', 198),
(107, 35, 225, 'Book', 5, 1, 55, 'San Francisco', 'The ''Feel'' Book', 225),
(115, 14, 10, 'Jewelry', 8, 1, 33, 'El Cerrito', 'Gold Ring', 4995),
(118, 26, 1000, 'Linens', 7, 3, 157, 'Oakland', 'Towels, Bath', 250),
(119, 49, 400, 'Toys', 8, 2, 35, 'El Cerrito', 'Squeeze Ball', 250),
(120, 26, 750, 'Linens', 7, 3, 157, 'Oakland', 'Twin Sheet', 800),
(121, 26, 600, 'Linens', 7, 3, 157, 'Oakland', 'Queen Sheet', 1375),
(127, 65, 125, 'Junior''s', 7, 3, 37, 'Oakland', 'Ski Jumpsuit', 4350),
(165, 65, 500, 'Junior''s', 7, 3, 37, 'Oakland', 'Jean', 825),
(258, 58, 1200, 'Men''s', 7, 2, 129, 'Oakland', 'Shirt', 650),
(301, 43, 500, 'Children''s', 8, 2, 32, 'El Cerrito', 'Boy''s Jean Suit', 1250),
(301, 73, 100, 'Children''s', 5, 1, 10, 'San Francisco', 'Boy''s Jean Suit', 1250);


INSERT INTO `sale`(`transaction_id`, `item`, `quantity`, `sale_date`, `employee`, `account_number`) VALUES
(100581, 118, 5, '2013-12-15', 157, NULL),
(100581, 120, 1, '2013-12-15', 157, NULL),
(100582, 26, 1, '2013-12-15', 1110, 14356540),
(100586, 106, 2, '2013-12-16', 35, 14096831),
(100586, 127, 3, '2013-12-16', 35, 14096831),
(100592, 258, 1, '2013-12-17', 129, NULL),
(100593, 23, 2, '2013-12-18', 13, 11652133),
(100594, 52, 1, '2013-12-18', 215, 12591815);


