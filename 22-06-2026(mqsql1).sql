USE vitcampus;

CREATE TABLE departments (
    did INT PRIMARY KEY,
    dname VARCHAR(25) NOT NULL UNIQUE
);

INSERT INTO departments VALUES
(101, 'cse'),
(102, 'ece'),
(103, 'civil'),
(106, 'aero'),
(107, 'mech');

SELECT * 
FROM departments
ORDER BY did;

CREATE TABLE hod (
    hid INT PRIMARY KEY,
    hname VARCHAR(20) NOT NULL UNIQUE
);

INSERT INTO hod VALUES
(101, 'Arun'),
(102, 'Jayanth'),
(104, 'Karthik'),
(105, 'Murali');

SELECT * 
FROM hod;

-- CROSS JOIN
SELECT *
FROM departments
CROSS JOIN hod
ORDER BY did;

-- INNER JOIN
SELECT *
FROM departments
INNER JOIN hod
ON departments.did = hod.hid;

-- NATURAL JOIN
SELECT *
FROM departments
NATURAL JOIN hod;

-- LEFT OUTER JOIN
SELECT *
FROM departments
LEFT OUTER JOIN hod
ON departments.did = hod.hid
ORDER BY did ASC;