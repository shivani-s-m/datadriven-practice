CREATE TABLE users (
    user_id TEXT,  /* no type on the canvas */
    email TEXT,  /* no type on the canvas */
    PRIMARY KEY (user_id)
);

CREATE TABLE followers (
    user_id TEXT,  /* no type on the canvas */
    follower_id TEXT,  /* no type on the canvas */
    PRIMARY KEY (user_id)
);

CREATE TABLE posts (
    post_id TEXT,  /* no type on the canvas */
    user_id TEXT,  /* no type on the canvas */
    content TEXT,  /* no type on the canvas */
    timestamp TEXT,  /* no type on the canvas */
    PRIMARY KEY (post_id)
);

CREATE TABLE engagement (
    engagement_id TEXT,  /* no type on the canvas */
    post_id TEXT,  /* no type on the canvas */
    activity TEXT,  /* no type on the canvas */
    user_id TEXT,  /* no type on the canvas */
    timestamp TEXT,  /* no type on the canvas */
    PRIMARY KEY (engagement_id)
);

ALTER TABLE followers
    ADD FOREIGN KEY (follower_id) REFERENCES users (user_id);

ALTER TABLE posts
    ADD FOREIGN KEY (user_id) REFERENCES followers (follower_id);

ALTER TABLE engagement
    ADD FOREIGN KEY (user_id) REFERENCES users (user_id);

ALTER TABLE engagement
    ADD FOREIGN KEY (post_id) REFERENCES posts (post_id);
