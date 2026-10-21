# The Celebrity Problem

*One post. A million notifications. Something has to give.*

[Data Modeling · Medium · on DataDriven](https://datadriven.io/problems/the_celebrity_problem)

## How it went

| | |
|---|---|
| Solved | 2026-10-21 |
| Accepted | on the first submission |
| Hints | 2 hints |
| Concepts | Cardinality, Dimension Tables, Entities, Fact Tables, Foreign Keys, Grain Definition, Junction Tables, Many-to-Many, Metric Additivity, One-to-Many, Pre-Aggregation, Primary Keys, Star Schema, Surrogate Keys |

## The design

```mermaid
erDiagram
    users {
        unspecified user_id PK
        unspecified email
    }
    followers {
        unspecified user_id PK
        unspecified follower_id FK
    }
    posts {
        unspecified post_id PK
        unspecified user_id FK
        unspecified content
        unspecified timestamp
    }
    engagement {
        unspecified engagement_id PK
        unspecified post_id FK
        unspecified activity
        unspecified user_id FK
        unspecified timestamp
    }
    users only one optionally to zero or more followers : "follower_id = user_id"
    followers only one optionally to zero or more posts : "user_id = follower_id"
    users only one optionally to zero or more engagement : "user_id"
    posts only one optionally to zero or more engagement : "post_id"
```

The accepted design is in [`schema.sql`](./schema.sql) as DDL and in [`schema.json`](./schema.json) as JSON.
