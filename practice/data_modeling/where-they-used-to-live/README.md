# Where They Used to Live

*They moved. The data stayed behind.*

[Data Modeling · Medium · on DataDriven](https://datadriven.io/problems/where_they_used_to_live)

## How it went

| | |
|---|---|
| Solved | 2026-10-30 |
| Accepted | on the first submission |
| Hints | 2 hints |
| Concepts | Constraints, Entities, Foreign Keys, Junction Tables, Many-to-Many, One-to-Many, Primary Keys, SCD Type 2, Surrogate Keys, 3NF |

## The design

```mermaid
erDiagram
    customers {
        unspecified customer_id PK
        unspecified name
    }
    addresses {
        unspecified address_id PK
        unspecified line_1
        unspecified line_2
        unspecified city
        unspecified state
        unspecified zipcode
    }
    customer_addresses {
        unspecified customer_id PK
        unspecified address_id PK
        unspecified moved_in_date
        unspecified moved_out_date
    }
    customer_addresses only one to one or more customers : "customer_id"
    customer_addresses only one to zero or more addresses : "address_id"
```

The accepted design is in [`schema.sql`](./schema.sql) as DDL and in [`schema.json`](./schema.json) as JSON.
