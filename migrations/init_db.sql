DROP TABLE IF EXISTS PC;
DROP TABLE IF EXISTS Laptop;
DROP TABLE IF EXISTS Printer;
DROP TABLE IF EXISTS Product;


CREATE TABLE Product (
    maker  VARCHAR(50),
    model  VARCHAR(50) PRIMARY KEY,
    type   VARCHAR(50)
);

CREATE TABLE PC (
    code   INT PRIMARY KEY,
    model  VARCHAR(50) REFERENCES Product(model),
    speed  REAL,
    ram    REAL,
    hd     REAL,
    cd     VARCHAR(50),
    price  REAL
);

CREATE TABLE Laptop (
    code   INT PRIMARY KEY,
    model  VARCHAR(50) REFERENCES Product(model),
    speed  SMALLINT,
    ram    SMALLINT,
    hd     REAL,
    price  REAL,
    screen REAL
);

CREATE TABLE Printer (
    code   INT PRIMARY KEY,
    model  VARCHAR(50) REFERENCES Product(model),
    color  CHAR(1),
    type   VARCHAR(50),
    price  REAL
);


INSERT INTO Product (maker, model, type) VALUES
('B', '1121', 'PC'),
('A', '1232', 'PC'),
('A', '1233', 'PC'),
('E', '1260', 'PC'),
('A', '1276', 'Printer'),
('D', '1288', 'Printer'),
('A', '1298', 'Laptop'),
('C', '1321', 'Laptop'),
('A', '1401', 'Printer'),
('A', '1408', 'Printer'),
('D', '1433', 'Printer'),
('E', '1434', 'Printer'),
('B', '1750', 'Laptop'),
('A', '1752', 'Laptop'),
('E', '2111', 'PC'),
('E', '2112', 'PC');

INSERT INTO PC (code, model, speed, ram, hd, cd, price) VALUES
(1,  '1232', 500.0, 64,  5.0,  '12x', 600.0),
(2,  '1121', 750.0, 128, 14.0, '40x', 850.0),
(3,  '1233', 500.0, 64,  5.0,  '12x', 600.0),
(4,  '1121', 600.0, 128, 14.0, '40x', 850.0),
(5,  '1121', 600.0, 128, 8.0,  '40x', 850.0),
(6,  '1233', 750.0, 128, 20.0, '50x', 950.0),
(7,  '1232', 500.0, 32,  10.0, '12x', 400.0),
(8,  '1232', 450.0, 64,  8.0,  '24x', 350.0),
(9,  '1232', 450.0, 32,  10.0, '24x', 350.0),
(10, '1260', 500.0, 32,  10.0, '12x', 350.0),
(11, '1233', 900.0, 128, 40.0, '40x', 980.0);

INSERT INTO Laptop (code, model, speed, ram, hd, price, screen) VALUES
(1, '1298', 350.0, 32,  4.0,  700.0,  11),
(2, '1321', 500.0, 64,  8.0,  970.0,  12),
(3, '1750', 750.0, 128, 12.0, 1200.0, 14),
(4, '1298', 600.0, 64,  10.0, 1050.0, 15),
(5, '1752', 750.0, 128, 10.0, 1150.0, 14),
(6, '1298', 450.0, 64,  10.0, 950.0,  12);

INSERT INTO Printer (code, model, color, type, price) VALUES
(1, '1276', 'n', 'Laser',  400.0),
(2, '1433', 'y', 'Jet',    270.0),
(3, '1434', 'y', 'Jet',    290.0),
(4, '1401', 'n', 'Matrix', 150.0),
(5, '1408', 'n', 'Matrix', 270.0),
(6, '1288', 'n', 'Laser',  400.0);
