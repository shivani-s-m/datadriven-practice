CREATE TABLE employees (
    employee_id TEXT,  /* no type on the canvas */
    name TEXT,  /* no type on the canvas */
    email TEXT,  /* no type on the canvas */
    PRIMARY KEY (employee_id)
);

CREATE TABLE applications (
    application_id TEXT,  /* no type on the canvas */
    name TEXT,  /* no type on the canvas */
    PRIMARY KEY (application_id)
);

CREATE TABLE usage (
    usage_id TEXT,  /* no type on the canvas */
    employee_id TEXT,  /* no type on the canvas */
    application TEXT,  /* no type on the canvas */
    starttime TEXT,  /* no type on the canvas */
    endtime TEXT,  /* no type on the canvas */
    PRIMARY KEY (usage_id)
);

ALTER TABLE usage
    ADD FOREIGN KEY (employee_id) REFERENCES employees (employee_id);

ALTER TABLE usage
    ADD FOREIGN KEY (application) REFERENCES applications (application_id);
