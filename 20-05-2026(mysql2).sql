USE vitcampus;

CREATE TABLE Persons (
    ID INT NOT NULL,
    LastName VARCHAR(255) NOT NULL UNIQUE,
    FirstName VARCHAR(255) NOT NULL,
    Age INT
);

INSERT INTO Persons VALUES
(101, 'V', 'Jayanth', NULL);

SELECT * FROM Persons;

-- Add unique constraint (if needed)
ALTER TABLE Persons
ADD UNIQUE (Age);

-- Remove it properly in MySQL
ALTER TABLE Persons
DROP INDEX Age;