-- Using MySQL --

CREATE schema leet_codedb;
USE leet_codedb;

CREATE TABLE Person (
    personId INT PRIMARY KEY,
    lastName VARCHAR(255),
    firstName VARCHAR(255)
);

CREATE TABLE Address (
    addressId INT PRIMARY KEY,
    personId INT,
    city VARCHAR(255),
    state VARCHAR(255),
    FOREIGN KEY (personId) REFERENCES Person(personId)
);

INSERT INTO Person (personId, lastName, firstName)
VALUES
(1, 'Wang', 'Allen'),
(2, 'Alice', 'Bob'),

(3, 'John', 'Doe');

-- Check records after Insertion
SELECT * FROM Person;

INSERT INTO Address (addressId, personId, city, state)
VALUES
(1, 2, 'New York City', 'New York'),
(2, 3, 'LeetCode', 'California');


-- Problem: report the first name, last name, city, and state of each person in the Person table. If the address of a personId is not present in the Address table, report null instead.

SELECT a.addressId, p.personId, a.city, a.state FROM Person p
LEFT JOIN Address a ON p.personId = a.personId
ORDER BY p.personId;






