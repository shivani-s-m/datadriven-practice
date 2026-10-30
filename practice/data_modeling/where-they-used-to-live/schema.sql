CREATE TABLE customers (
    customer_id TEXT,  /* no type on the canvas */
    name TEXT,  /* no type on the canvas */
    PRIMARY KEY (customer_id)
);

CREATE TABLE addresses (
    address_id TEXT,  /* no type on the canvas */
    "line 1" TEXT,  /* no type on the canvas */
    "line 2" TEXT,  /* no type on the canvas */
    city TEXT,  /* no type on the canvas */
    state TEXT,  /* no type on the canvas */
    zipcode TEXT,  /* no type on the canvas */
    PRIMARY KEY (address_id)
);

CREATE TABLE customer_addresses (
    customer_id TEXT,  /* no type on the canvas */
    address_id TEXT,  /* no type on the canvas */
    moved_in_date TEXT,  /* no type on the canvas */
    moved_out_date TEXT,  /* no type on the canvas */
    PRIMARY KEY (customer_id, address_id)
);

ALTER TABLE customers
    ADD FOREIGN KEY (customer_id) REFERENCES customer_addresses (customer_id);

ALTER TABLE addresses
    ADD FOREIGN KEY (address_id) REFERENCES customer_addresses (address_id);
