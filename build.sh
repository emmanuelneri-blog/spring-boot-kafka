#!/bin/bash

mvn clean install

mvn -f producer/pom.xml dockerfile:build
mvn -f consumer/pom.xml dockerfile:build
