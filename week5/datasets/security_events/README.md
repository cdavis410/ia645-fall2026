# Dataset — Week 5: Security Events Database (Lab 6)

**File:** `security_events.db`. Lab 6 indexes the `auth_log` and `network_log` tables into Elasticsearch (`week5/lab6/ingest_to_elk.py`).

SQLite database with four tables:

| Table | Records | Columns |
|---|---|---|
| auth_log | 811 | id, timestamp, username, source_ip, hostname, event_type, auth_method, port |
| network_log | 608 | id, timestamp, username, src_ip, dst_ip, protocol, bytes_out, bytes_in, duration_sec, dst_port |
| role_changes | 27 | id, timestamp, username, old_role, new_role, changed_by, change_type |
| threat_intel | 10 | id, ip_address, classification, threat_type, source, confidence_score |

