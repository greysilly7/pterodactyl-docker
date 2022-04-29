#!/usr/bin/env bash

mkdir -p build

case $1 in
  8-jre)openjdk="openjdk-8-jre-headless";;
  8-jdk)openjdk="openjdk-8-jdk-headless";;
  11-jre)openjdk="openjdk-11-jre-headless";;
  11-jdk)openjdk="openjdk-11-jdk-headless";;
  17-jre)openjdk="openjdk-17-jre-headless";;
  17-jdk)openjdk="openjdk-17-jdk-headless";;
  *)echo "Unknown OpenJDK variant $1";exit 1;;
esac

sed -e "s/@OPENJDK@/$openjdk/g" < Dockerfile > build/Dockerfile