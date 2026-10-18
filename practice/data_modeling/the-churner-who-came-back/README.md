# The Churner Who Came Back

*They cancelled. They came back. The report has to tell both stories correctly.*

[Data Modeling · Hard · on DataDriven](https://datadriven.io/problems/the_churner_who_came_back)

## How it went

| | |
|---|---|
| Solved | 2026-10-18 |
| Accepted | on the 6th submission |
| Hints | 2 hints |
| Concepts | Attributes, Dimension Tables, Entities, Fact Tables, Foreign Keys, Grain Definition, Key Generation, Many-to-Many, Metric Additivity, OLAP Cubes, One-to-Many, Primary Keys, SCD Type 2, Star Schema, Surrogate Keys |

## The design

```mermaid
erDiagram
    subscribers {
        unspecified subscriber_id PK
        unspecified email UK
        unspecified region_id FK
    }
    tiers {
        unspecified tier_id PK
        unspecified tier_name
        unspecified amount
    }
    regions {
        unspecified region_id PK
        unspecified region
    }
    subscription_events {
        unspecified event_id PK
        unspecified time_stamp
        unspecified from_tier_id FK
        unspecified to_tier_id FK
        unspecified subscription_id FK
        unspecified activity
    }
    subscriptions {
        unspecified subscription_id PK
        unspecified user_id FK
    }
    regions only one optionally to zero or more subscribers : "region_id"
    subscribers only one optionally to zero or more subscriptions : "user_id = subscriber_id"
    subscriptions only one optionally to zero or more subscription_events : "subscription_id"
    tiers only one optionally to zero or more subscription_events : "from_tier_id = tier_id"
    tiers only one optionally to zero or more subscription_events : "to_tier_id = tier_id"
```

The accepted design is in [`schema.sql`](./schema.sql) as DDL and in [`schema.json`](./schema.json) as JSON.
