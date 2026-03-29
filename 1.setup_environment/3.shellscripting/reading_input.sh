#!/bin/bash 
service_name="reactjs-frontend"
service_port=9090

# -n prevent a new line 
echo -n " Choose your action(stop,restart, enable): " 
read action
echo "-------------<OUTPUT>-----------"
echo "Your service name is : $service_name" 
echo "Running on port $service_port" 
echo "You are ${action^^} ${service_name}" 
echo "You are ${action,,} ${service_name}" 
