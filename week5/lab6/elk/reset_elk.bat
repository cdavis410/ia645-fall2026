@echo off
echo WARNING: This will delete all indexed data and reset ELK to a clean state.
echo Press Ctrl+C to cancel, or any key to continue...
pause > nul
docker-compose down -v
echo ELK stack reset. All indexed data deleted.
pause
