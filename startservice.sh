#!/bin/sh
TTT=/usr/local/docker-host
TARGET=/usr/local/docker

ls -l $TARGET
cp -R $TARGET/* ${TTT}/
