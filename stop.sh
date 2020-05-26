#!/bin/bash

echo "Stopping docker containers needed for covid-19 app..."

echo "Stopping backend - spring boot REST API"
docker stop covid_19_news_rest

echo "Stopping backend - .NET app, websockets"
docker stop covid19_asp_net_core

echo "Stopping frontend - vue.js application"
docker stop covid_19_vuejs

echo "Container should be stopped and deleted :)"
