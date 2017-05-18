#!/bin/sh
TTT=/usr/local/docker-host
TARGET=/usr/local/docker

ls -l $TARGET
mkdir -p TTT
cp -R $TARGET/* ${TTT}/
