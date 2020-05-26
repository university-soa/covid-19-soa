#!/bin/bash

echo "Starting docker containers needed for covid-19 app..."

echo "Starting backend - spring boot REST API"
docker run -d -p 8081:8081 --rm --name covid_19_news_rest denisduev/covid-19:latest

echo "Starting backend - .NET application"
docker run  -d -p 5000:5000 -p 5001:5001 --rm --name covid19_asp_net_core denisduev/covid19-asp-net-core:latest

echo "Starting frontend - vue.js application"
docker run -d -p 8080:8080 --rm --name covid_19_vuejs denisduev/covid-19-vuejs:latest

echo "After a while, you can access the app on: http://localhost:8080"
