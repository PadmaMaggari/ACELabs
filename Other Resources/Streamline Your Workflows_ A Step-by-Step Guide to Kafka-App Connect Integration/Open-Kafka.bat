@echo off

cd C:\ApacheKafka

REM Start ZooKeeper (Assuming ZooKeeper is included in your Kafka distribution)
start /B cmd /c "bin\windows\zookeeper-server-start.bat config\zookeeper.properties"

REM Wait for a few seconds to allow ZooKeeper to start
timeout /T 5 /NOBREAK > nul

REM Start Kafka server
start /B cmd /c "bin\windows\kafka-server-start.bat config\server.properties"
