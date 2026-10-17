# Where Everyone Was

*People move. Sometimes twice in a month. How do you remember where everyone was, and when?*

[Data Modeling · Easy · on DataDriven](https://datadriven.io/problems/where_everyone_was)

## How it went

| | |
|---|---|
| Solved | 2026-10-17 |
| Accepted | on the first submission |
| Hints | none |
| Concepts | Attributes, Entities, Foreign Keys, Junction Tables, Many-to-Many, One-to-Many, Primary Keys, SCD Strategy, SCD Type 2, Surrogate Keys |

## The design

```mermaid
erDiagram
    customers {
        unspecified customer_id FK
    }
    addresses {
        unspecified address_id
        unspecified customer_id PK
        unspecified address_from
        unspecified address_till
        unspecified address
    }
    addresses only one optionally to zero or more customers : "customer_id"
```

The accepted design is in [`schema.sql`](./schema.sql) as DDL and in [`schema.json`](./schema.json) as JSON.
