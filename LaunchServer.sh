#!/bin/bash
echo "starting with 16 gigs"
sleep 5
java -server -Xmx16G -Dfml.queryResult=confirm -jar forge-1.12.2-14.23.5.2854.jar nogui/minecraft