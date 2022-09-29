use worstBuy;

CREATE TABLE IF NOT EXISTS UserAccounts(
	UserID MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(20) NOT NULL,
    lastName VARCHAR(20) NOT NULL,
    accountType VARCHAR(10) CHECK(accountType IN('Free', 'Premium', 'Corporate', 'Admin')),
    phoneNum VARCHAR(14) NOT NULL,
    email VARCHAR(30) NOT NULL,
    paymentInfo VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS Items(
	itemID MEDIUMINT NOT NULL,
	itemName VARCHAR(100) NOT NULL,
    itemCondition VARCHAR (20) CHECK(itemCondition IN('Used', 'Slightly Used', 'Like New', 'Mint')),
    price DECIMAL(9,2) UNSIGNED NOT NULL
);

CREATE TABLE IF NOT EXISTS Transactions(
	transactionID MEDIUMINT NOT NULL primary key,
    firstName VARCHAR(20) NOT NULL DEFAULT ' ',
    lastName VARCHAR(20) NOT NULL DEFAULT ' ',
    itemName VARCHAR(100) NOT NULL DEFAULT ' ',
    accountType VARCHAR(10) CHECK(accountType IN('Free', 'Premium', 'Corporate', 'Admin')) NOT NULL,
    browse BOOLEAN NOT NULL DEFAULT FALSE,
    buy BOOLEAN NOT NULL DEFAULT FALSE,
    sell BOOLEAN NOT NULL DEFAULT FALSE,
    rent BOOLEAN NOT NULL DEFAULT FALSE,
    createAgents MEDIUMINT NOT NULL DEFAULT 0
);


INSERT INTO UserAccounts(firstName, lastName, accountType, phoneNum, email, paymentInfo)
VALUES ('Barbara', 'Finsky', 'Free', '(704 123-4567)', 'bfinsky111@gmail.com', 'Credit Card'),
('Jimmy', 'Nuetron', 'Premium', '(704 462-5278)', 'jneutron@gottablast.com', 'Credit Card'),
('Carl', 'Wheezer', 'Corporate', '(704 943-3037)', 'cwheezer@croissant.com', 'Credit Card');

INSERT INTO Items(itemID, itemName, itemCondition, price)
VALUES (1, 'Mountain Painting', 'Mint', 1499.99),
(2, 'Brain Swapper', 'Slightly Used', 999999.99),
(3, 'The Croissant', 'Used', 499999.99);

INSERT INTO Transactions(firstName, lastName, accountType, itemName)
SELECT firstName, lastName, accountType, itemName
FROM UserAccounts u
INNER JOIN Items i where i.itemID = u.UserID;

INSERT INTO Transactions(transactionID, browse, buy, sell, rent, createAgents)
VALUES (1, TRUE, TRUE, FALSE, FALSE, 0),
(2, FALSE, FALSE, TRUE, FALSE, 0),
(3, FALSE, FALSE, TRUE, TRUE, 0);

SELECT *
FROM UserAccounts;

SELECT * 
FROM Items;

SELECT *
FROM Transactions;
