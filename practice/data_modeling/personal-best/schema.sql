CREATE TABLE exercise (
    exercise_id TEXT,  /* no type on the canvas */
    date TEXT,  /* no type on the canvas */
    user_id TEXT,  /* no type on the canvas */
    PRIMARY KEY (exercise_id)
);

CREATE TABLE users (
    user_id TEXT,  /* no type on the canvas */
    username TEXT,  /* no type on the canvas */
    PRIMARY KEY (user_id)
);

CREATE TABLE sets (
    set_id TEXT,  /* no type on the canvas */
    exercise_id TEXT,  /* no type on the canvas */
    reps TEXT,  /* no type on the canvas */
    weights TEXT,  /* no type on the canvas */
    PRIMARY KEY (set_id)
);

ALTER TABLE exercise
    ADD FOREIGN KEY (user_id) REFERENCES users (user_id);

ALTER TABLE sets
    ADD FOREIGN KEY (exercise_id) REFERENCES exercise (exercise_id);
