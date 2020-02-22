CONNECT TO TX;
CREATE SCHEMA tx;
CREATE TABLE tx.transactions(
    tx_from INTEGER,
    tx_to INTEGER,
    tx_amount FLOAT,
    tx_time TIMESTAMP
);
