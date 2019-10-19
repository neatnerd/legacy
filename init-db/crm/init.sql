CREATE SCHEMA master
    CREATE TABLE customers(
        id SERIAL,
        first_name varchar(50) NOT NULL,
        last_name varchar(50) NOT NULL,
        birthday date NOT NULL,
        address varchar(50) NOT NULL
    )