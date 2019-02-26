#!/usr/bin/env bash

echo "suspending cluster"
cd ../cl2node2
vagrant suspend
sleep 5
cd ../cl2node1
vagrant suspend
sleep 5
cd ../cl2master
vagrant suspend
sleep 5
cd ../cl2nfs
vagrant suspend
sleep 5
cd ../cl2master
echo "cluster suspended"
