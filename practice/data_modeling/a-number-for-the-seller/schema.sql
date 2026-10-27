CREATE TABLE products (
    product_id BIGINT,
    name VARCHAR,
    live_at TIMESTAMP,
    is_active BOOLEAN,
    seller_id TEXT,  /* no type on the canvas */
    PRIMARY KEY (product_id)
);

CREATE TABLE sellers (
    seller_id UUID,
    name VARCHAR,
    PRIMARY KEY (seller_id)
);

CREATE TABLE sales (
    sale_id UUID,
    units INT,
    timestamp TIMESTAMP,
    product_id BIGINT,
    revenue BIGINT
);

ALTER TABLE products
    ADD FOREIGN KEY (seller_id) REFERENCES sellers (seller_id);

ALTER TABLE sales
    ADD FOREIGN KEY (product_id) REFERENCES products (product_id);
