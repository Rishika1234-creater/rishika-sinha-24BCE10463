show databases;

use vitcampus;

show tables;

select * from cse;

desc cse;

-- Add new columns
alter table cse
add (
    sphn bigint,
    sphn2 bigint
);

-- Insert values
insert into cse
values (
    106,
    'semi',
    95,
    'cse',
    'sri lanka'
);

-- Drop column
alter table cse
drop column sphn2;

-- Add column with default value
alter table cse
add (
    scountry varchar(30) default 'india'
);

-- Rename column
alter table cse
rename column scountry to slocation;