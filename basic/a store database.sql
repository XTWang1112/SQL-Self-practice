CREATE TABLE smart_phone(
id INTEGER PRIMARY KEY,
name TEXT,
colour TEXT,
price INTEGER,
DISCOUNT INTEGER
);

INSERT INTO smart_phone VALUES(1, "iphone X", "blue", 900, 10);
INSERT INTO smart_phone VALUES(2, "iphone Xr", "yellow", 910, 5);
INSERT INTO smart_phone VALUES(3, "iphone 11", "black", 950, 0);
INSERT INTO smart_phone VALUES(4, "iphone 11", "red", 950, 0);
INSERT INTO smart_phone VALUES(5, "iphone 11", "silver", 950, 0);
INSERT INTO smart_phone VALUES(6, "iphone 12", "blue", 1000, 5);
INSERT INTO smart_phone VALUES(7, "iphone 12", "silver", 1000, 5);
INSERT INTO smart_phone VALUES(8, "iphone 12", "black", 1000, 5);
INSERT INTO smart_phone VALUES(9, "iphone 12", "red", 1000, 5);
INSERT INTO smart_phone VALUES(10, "iphone 13", "blue", 1100, 0);
INSERT INTO smart_phone VALUES(11, "iphone 13", "silver", 1100, 0);
INSERT INTO smart_phone VALUES(12, "iphone 13", "black", 1100, 0);
INSERT INTO smart_phone VALUES(13, "iphone 13", "red", 1100, 0);
INSERT INTO smart_phone VALUES(14, "iphone 13 proMax", "blue", 1300, 5);
INSERT INTO smart_phone VALUES(15, "iphone  proMax", "silver", 1300, 5);

SELECT * 
FROM smart_phone
ORDER BY price;

SELECT COUNT(*)
FROM smart_phone
WHERE colour = 'blue';