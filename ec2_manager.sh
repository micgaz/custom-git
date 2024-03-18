#!/bin/bash

if [ "$choice" == "1" ]; then
    echo "List out all EC2 instances for profile $PROFILE:"
    aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId,State.Name,Tags[?Key==`Name`].Value[]]' --output table
fi