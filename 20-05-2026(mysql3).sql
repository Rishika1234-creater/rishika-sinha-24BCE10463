USE vitcampus;

CREATE TABLE persons (
    ID INT NOT NULL,
    LastName VARCHAR(255) NOT NULL UNIQUE,
    FirstName VARCHAR(255) NOT NULL,
    Age INT
);

DESCRIBE persons;