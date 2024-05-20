@echo off
REM Create directories
mkdir postgres_data
mkdir pgadmin

REM Start Docker Compose
docker-compose up
