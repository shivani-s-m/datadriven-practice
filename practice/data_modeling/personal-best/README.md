# Personal Best

*Reps, sets, streaks, and personal bests. Gym rats love their stats.*

[Data Modeling · Easy · on DataDriven](https://datadriven.io/problems/personal_best)

## How it went

| | |
|---|---|
| Solved | 2026-10-17 |
| Accepted | on the 2nd submission |
| Hints | none |
| Concepts | Attributes, Data Types, Entities, 1NF, Foreign Keys, Grain Definition, One-to-Many, Primary Keys, 2NF, 3NF |

## The design

```mermaid
erDiagram
    exercise {
        unspecified exercise_id PK
        unspecified date
        unspecified user_id FK
    }
    users {
        unspecified user_id PK
        unspecified username
    }
    sets {
        unspecified set_id PK
        unspecified exercise_id FK
        unspecified reps
        unspecified weights
    }
    users only one optionally to zero or more exercise : "user_id"
    exercise only one optionally to zero or more sets : "exercise_id"
```

The accepted design is in [`schema.sql`](./schema.sql) as DDL and in [`schema.json`](./schema.json) as JSON.
