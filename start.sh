#!/bin/bash

echo "Starting docker containers needed for covid-19 app..."

echo "Starting backend - spring boot REST API"
docker run -d -p 8081:8081 --rm --name covid_19_news_rest denisduev/covid-19:latest

echo "Starting frontend - vue.js application"
docker run -d -p 8080:8080 --rm --name covid_19_vuejs denisduev/covid-19-vuejs:latest

echo "You can access the app on: http://localhost:8080"