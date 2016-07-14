#!/usr/bin/env bash

echo "Starting DataStax Enterprise"
sudo service dse start

echo "Starting the DataStax Agent"
sudo service datastax-agent start

# restart agent once opscenter up and running. Can do manually on each node
sleep 60
sudo service datastax-agent restart
