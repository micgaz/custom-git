#!/bin/bash

echo "Select an operation:"
echo "1) List EC2 instances"
echo "2) Start an EC2 instance"
echo "3) Stop an EC2 instance"
echo "4) Check EC2 instance health status"
read -p "Enter choice: " choice

case $choice in
    1)
        echo "List out all EC2 instances for profile $PROFILE:"
        aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId,State.Name,Tags[?Key==`Name`].Value[]]' --output table
        ;;
    2)
        read -p "Enter the instance ID to start: " instance_id
        echo "Starting EC2 instance with ID $instance_id"
        aws ec2 start-instances --instance-ids "$instance_id"
        ;;
    3)
        read -p "Enter the instance ID to stop: " instance_id
        echo "Stopping EC2 instance with ID $instance_id"
        aws ec2 stop-instances --instance-ids "$instance_id"
        ;;
    4)
        read -p "Enter the instance ID to check health status: " instance_id
        health_status=$(aws ec2 describe-instance-status --instance-id "$instance_id" --query 'InstanceStatus.Status, SystemStatus.Status' --output json)
        instance_status=$(echo "$health_status" | jq -r '.[0]')
        system_status=$(echo "$health_status" | jq -r '.[1]')
        echo "Health status for EC2 instance $instance_id:"
        echo "Instance Status: $instance_status"
        echo "System Status: $system_status"
        ;;
    *)
        echo "Invalid choice. Please select a valid option."
        ;;
esac
