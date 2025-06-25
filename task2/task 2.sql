USE TASK2 ;

CREATE TABLE USERS (
    CustomerID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Email TEXT,
    Phone BIGINT ,
    Age INTEGER
);

-- Full data
INSERT INTO USERS (CustomerID, Name, Email, Phone, Age)
VALUES (1, 'PRAGYAN SHRIVASTAVA', 'pragyanshrivastava26@gmail.com' , '6232050974' , 22);

-- Missing phone number (defaults to 'Not Provided')
INSERT INTO USERS (CustomerID, Name, Email, Age)
VALUES (2, 'SARVAGYA SHRIVASTAVA', 'sarvagyashrivastava@gmail.com', 35);

-- Missing email and age (set to NULL)
INSERT INTO USERS (CustomerID, Name, Phone)
VALUES (3, 'rajiv bhai', '9123456789');

-- Update email for customer with missing email
UPDATE USERS
SET Email = 'rajivbhai@gmail.com'
WHERE CustomerID = 3;

-- Update age where it's still NULL
UPDATE USERS
SET Age = 30
WHERE Age IS NULL;

-- Delete customers older than 60 (example condition)

DELETE FROM USERS WHERE CustomerID = 3;

select *from users;


