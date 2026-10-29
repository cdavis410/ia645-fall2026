# Dataset — Week 1: Authentication Log (Lab 1)

Simulated enterprise authentication events, in two formats with the same data: `auth_log.csv` and `auth_log.db` (SQLite table `auth_log`, which adds an `id` column).

**Records:** 811

| Column | Description |
|---|---|
| timestamp | Event time |
| username | Account name |
| source_ip | Source IP address |
| hostname | Target host |
| event_type | Login outcome (see Lab instructions) |
| auth_method | Authentication method |
| port | Destination port |

