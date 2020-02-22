CONNECT ANALYST/analyst@//localhost:1521/ACCOUNTS;

CREATE TABLE ACCOUNTS(
    ID number(10) NOT NULL,
    primary_owner number(10) NOT NULL,
    secondary_owner number(10),
    account_type number(10) NOT NULL,
    CONSTRAINT accounts_pk PRIMARY KEY (primary_owner)
);
