CREATE TABLE subscribers (
    subscriber_id TEXT,  /* no type on the canvas */
    email TEXT,  /* no type on the canvas */
    region_id TEXT,  /* no type on the canvas */
    PRIMARY KEY (subscriber_id),
    UNIQUE (email)
);

CREATE TABLE tiers (
    tier_id TEXT,  /* no type on the canvas */
    tier_name TEXT,  /* no type on the canvas */
    amount TEXT,  /* no type on the canvas */
    PRIMARY KEY (tier_id)
);

CREATE TABLE regions (
    region_id TEXT,  /* no type on the canvas */
    region TEXT,  /* no type on the canvas */
    PRIMARY KEY (region_id)
);

CREATE TABLE subscription_events (
    event_id TEXT,  /* no type on the canvas */
    time_stamp TEXT,  /* no type on the canvas */
    from_tier_id TEXT,  /* no type on the canvas */
    to_tier_id TEXT,  /* no type on the canvas */
    subscription_id TEXT,  /* no type on the canvas */
    activity TEXT,  /* no type on the canvas */
    PRIMARY KEY (event_id)
);

CREATE TABLE subscriptions (
    subscription_id TEXT,  /* no type on the canvas */
    user_id TEXT,  /* no type on the canvas */
    PRIMARY KEY (subscription_id)
);

ALTER TABLE subscribers
    ADD FOREIGN KEY (region_id) REFERENCES regions (region_id);

ALTER TABLE subscriptions
    ADD FOREIGN KEY (user_id) REFERENCES subscribers (subscriber_id);

ALTER TABLE subscription_events
    ADD FOREIGN KEY (subscription_id) REFERENCES subscriptions (subscription_id);

ALTER TABLE subscription_events
    ADD FOREIGN KEY (from_tier_id) REFERENCES tiers (tier_id);

ALTER TABLE subscription_events
    ADD FOREIGN KEY (to_tier_id) REFERENCES tiers (tier_id);
