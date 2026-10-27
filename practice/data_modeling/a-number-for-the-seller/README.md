# A Number for the Seller

*They want a total. Give them the right schema first.*

[Data Modeling · Easy · on DataDriven](https://datadriven.io/problems/a_number_for_the_seller)

## How it went

| | |
|---|---|
| Solved | 2026-10-27 |
| Accepted | on the first submission |
| Hints | 2 hints |
| Concepts | Attributes, Dimension Tables, Fact Tables, Foreign Keys, Grain Definition, Metric Additivity, One-to-Many, Pre-Aggregation, Primary Keys, Star Schema, Surrogate Keys |

## The design

```mermaid
erDiagram
    products {
        BIGINT product_id PK
        VARCHAR name
        TIMESTAMP live_at
        BOOLEAN is_active
        unspecified seller_id FK
    }
    sellers {
        UUID seller_id PK
        VARCHAR name
    }
    sales {
        UUID sale_id
        INT units
        TIMESTAMP timestamp
        BIGINT product_id FK
        BIGINT revenue
    }
    sellers only one optionally to zero or more products : "seller_id"
    products only one optionally to zero or more sales : "product_id"
```

The accepted design is in [`schema.sql`](./schema.sql) as DDL and in [`schema.json`](./schema.json) as JSON.
