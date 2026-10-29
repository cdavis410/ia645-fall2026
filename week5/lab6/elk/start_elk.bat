@echo off
echo Starting IA 645 ELK Stack...
echo This may take 60-90 seconds on first run.
echo.
echo Once started:
echo   Elasticsearch: http://localhost:9200
echo   Kibana:        http://localhost:5601
echo.
docker-compose up -d
echo.
echo Waiting for Elasticsearch to be ready...
timeout /t 30 /nobreak > nul
echo.
echo Checking Elasticsearch...
curl -s http://localhost:9200 > nul 2>&1
if %errorlevel% == 0 (
    echo Elasticsearch is ready.
) else (
    echo Elasticsearch may still be starting. Wait another 30 seconds then try http://localhost:9200
)
echo.
echo Open Kibana at: http://localhost:5601
pause
