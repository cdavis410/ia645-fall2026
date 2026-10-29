# Lab 6 — ELK Stack Setup Guide

This guide walks you through starting the ELK stack and ingesting course data into Elasticsearch.

---

## System Requirements

ELK is resource intensive. Before starting:
- Minimum 8GB RAM on your machine (16GB recommended)
- At least 5GB free disk space
- Docker Desktop running with at least 4GB memory allocated

**To check/increase Docker Desktop memory:**
Docker Desktop → Settings → Resources → Memory → set to at least 4096 MB

---

## Step 1 — Start the ELK Stack

Navigate to the `week5/lab6/elk/` folder in your repository and double-click **start_elk.bat**

Or in PowerShell from that folder:
```
docker-compose up -d
```

This downloads Elasticsearch and Kibana images on first run — allow 3-5 minutes.

---

## Step 2 — Verify Elasticsearch is Running

Open your browser and go to:
```
http://localhost:9200
```

You should see a JSON response like:
```json
{
  "name": "...",
  "cluster_name": "docker-cluster",
  "version": { ... },
  "tagline": "You Know, for Search"
}
```

If you see this, Elasticsearch is ready. If not, wait another 30 seconds and refresh.

---

## Step 3 — Verify Kibana is Running

Open your browser and go to:
```
http://localhost:5601
```

Kibana may take an additional 30-60 seconds after Elasticsearch is ready. You will see the Kibana home screen when it is ready.

---

## Step 4 — Ingest Course Data

With BOTH your base course container AND ELK running:

1. Open JupyterLab at http://localhost:8888
2. Open `week5/lab6/ingest_to_elk.py`
3. Run the script — it will index auth_log and network_log into Elasticsearch
4. Verify the record counts printed match expected values

---

## Step 5 — Create Data Views in Kibana

1. In Kibana, click the hamburger menu (≡) → Stack Management → Data Views
2. Click **Create data view**
3. Name: `IA645 Auth Log` | Index pattern: `ia645-auth` | Timestamp: `@timestamp` → Save
4. Create a second: `IA645 Network Log` | Index pattern: `ia645-network` | Timestamp: `@timestamp` → Save

You are now ready to build dashboards in Kibana → Analytics → Dashboard

---

## Stopping ELK

Double-click **stop_elk.bat** or run:
```
docker-compose down
```

Your indexed data is preserved in the esdata Docker volume and will be available next time you start ELK.

---

## Resetting ELK (delete all data)

Double-click **reset_elk.bat** — this deletes all indexed data and starts fresh.

---

## Troubleshooting

**Kibana shows "Kibana server is not ready yet"**
Elasticsearch may still be starting. Wait 60 seconds and refresh.

**Port 9200 or 5601 already in use**
Something else is using that port. Stop the conflicting service or restart Docker Desktop.

**Elasticsearch container keeps restarting**
Docker Desktop does not have enough memory allocated. Increase to at least 4GB in Docker Desktop Settings → Resources.

**Ingestion script says "Cannot reach Elasticsearch"**
Make sure ELK is running (http://localhost:9200 responds) before running the ingestion script.
