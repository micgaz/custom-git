#!/bin/bash
echo "Select an operation:"
echo "1) List EC2 instances"
echo "2) Start an EC2 instance"
echo "3) Stop an EC2 instance"
read -p "Enter choice: " choice

if [ "$choice" == "1" ]; then
    echo "List out all EC2 instances for profile $PROFILE:"
    aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId,State.Name,Tags[?Key==`Name`].Value[]]' --output table
fi