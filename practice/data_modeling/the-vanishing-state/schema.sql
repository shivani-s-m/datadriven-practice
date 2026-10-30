CREATE TABLE priority (
    priority_id TEXT,  /* no type on the canvas */
    name TEXT,  /* no type on the canvas */
    deadline TEXT,  /* no type on the canvas */
    PRIMARY KEY (priority_id)
);

CREATE TABLE tickets (
    ticket_id TEXT,  /* no type on the canvas */
    submited_by TEXT,  /* no type on the canvas */
    description TEXT,  /* no type on the canvas */
    priority_id TEXT,  /* no type on the canvas */
    PRIMARY KEY (ticket_id)
);

CREATE TABLE users (
    user_id TEXT,  /* no type on the canvas */
    name TEXT,  /* no type on the canvas */
    email TEXT,  /* no type on the canvas */
    PRIMARY KEY (user_id)
);

CREATE TABLE ticket_statuses (
    status_id TEXT,  /* no type on the canvas */
    ticket_id TEXT,  /* no type on the canvas */
    timestamp TEXT,  /* no type on the canvas */
    agent_id TEXT,  /* no type on the canvas */
    PRIMARY KEY (status_id, ticket_id)
);

CREATE TABLE agents (
    agent_id TEXT,  /* no type on the canvas */
    name TEXT,  /* no type on the canvas */
    PRIMARY KEY (agent_id)
);

CREATE TABLE status (
    status_id TEXT,  /* no type on the canvas */
    status_name TEXT,  /* no type on the canvas */
    PRIMARY KEY (status_id)
);

ALTER TABLE tickets
    ADD FOREIGN KEY (submited_by) REFERENCES users (user_id);

ALTER TABLE ticket_statuses
    ADD FOREIGN KEY (ticket_id) REFERENCES tickets (ticket_id);

ALTER TABLE ticket_statuses
    ADD FOREIGN KEY (agent_id) REFERENCES agents (agent_id);

ALTER TABLE ticket_statuses
    ADD FOREIGN KEY (status_id) REFERENCES status (status_id);

ALTER TABLE tickets
    ADD FOREIGN KEY (priority_id) REFERENCES priority (priority_id);
