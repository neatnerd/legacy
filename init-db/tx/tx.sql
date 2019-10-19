CREATE SCHEMA tx
    CREATE TABLE transactions(
        tx_from INTEGER,
        tx_to INTEGER,
        tx_amount FLOAT,
        tx_time TIMESTAMP
    )