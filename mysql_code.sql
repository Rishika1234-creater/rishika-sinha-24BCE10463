SHOW DATABASES;

CREATE DATABASE vitcampus1;

DROP DATABASE vitcampus1;

USE vitcampus;

CREATE TABLE cse (
    sid INT,
    sname VARCHAR(50),
    smarks INT
);

CREATE TABLE mech (
    sid INT,
    sname VARCHAR(50),
    smarks INT
);

CREATE TABLE eee (
    sid INT,
    sname VARCHAR(50),
    smarks INT
);

SHOW TABLES FROM vitcampus;

SELECT * FROM cse;

INSERT INTO cse VALUES (109, 'kiran', 99);