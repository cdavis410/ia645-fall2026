@echo off
echo Stopping IA 645 ELK Stack...
docker-compose down
echo ELK stack stopped. Data is preserved in the esdata volume.
pause
