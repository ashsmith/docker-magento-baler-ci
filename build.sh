#!/bin/bash

PHP_VERSION=$1

if [ "$PHP_VERSION" = "" ]; then
  echo "Please specify PHP version: i.e.: ./build.sh 7.2 or ./build.sh 7.3"
fi;

docker build --build-arg PHP_VERSION=$PHP_VERSION . -t ashsmith/magento-baler-ci:$PHP_VERSION