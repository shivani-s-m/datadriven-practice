# The Vanishing State

*A status column forgets the moment it changes. Model the schema that remembers.*

[Data Modeling · Easy · on DataDriven](https://datadriven.io/problems/the_vanishing_state)

## How it went

| | |
|---|---|
| Solved | 2026-10-30 |
| Accepted | on the first submission |
| Hints | 2 hints |
| Concepts | Attributes, Constraints, Data Types, Dimension Tables, Entities, Event Sourcing, Fact Tables, Foreign Keys, Grain Definition, Immutable Logs, Indexing, Metric Additivity, One-to-Many, Pre-Aggregation, Primary Keys, Star Schema |

## The design

```mermaid
erDiagram
    priority {
        unspecified priority_id PK
        unspecified name
        unspecified deadline
    }
    tickets {
        unspecified ticket_id PK
        unspecified submited_by FK
        unspecified description
        unspecified priority_id FK
    }
    users {
        unspecified user_id PK
        unspecified name
        unspecified email
    }
    ticket_statuses {
        unspecified status_id PK
        unspecified ticket_id PK
        unspecified timestamp
        unspecified agent_id FK
    }
    agents {
        unspecified agent_id PK
        unspecified name
    }
    status {
        unspecified status_id PK
        unspecified status_name
    }
    users only one optionally to zero or more tickets : "submited_by = user_id"
    tickets only one to one or more ticket_statuses : "ticket_id"
    agents only one optionally to zero or more ticket_statuses : "agent_id"
    status only one to zero or more ticket_statuses : "status_id"
    priority only one optionally to only one tickets : "priority_id"
```

The accepted design is in [`schema.sql`](./schema.sql) as DDL and in [`schema.json`](./schema.json) as JSON.
