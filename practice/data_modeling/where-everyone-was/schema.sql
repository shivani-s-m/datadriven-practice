CREATE TABLE customers (
    customer_id TEXT  /* no type on the canvas */
);

CREATE TABLE addresses (
    address_id TEXT,  /* no type on the canvas */
    customer_id TEXT,  /* no type on the canvas */
    address_from TEXT,  /* no type on the canvas */
    address_till TEXT,  /* no type on the canvas */
    address TEXT,  /* no type on the canvas */
    PRIMARY KEY (customer_id)
);

ALTER TABLE customers
    ADD FOREIGN KEY (customer_id) REFERENCES addresses (customer_id);
