#!/bin/bash

################
# Author : Aliraza
# Date : 2 may 2024
# Version : 1.2

# This script is for reporting Aws Resource USAGE
################
# AWS S3
# AWS EC2
# AWS LAMBDA
# AWS IAM USER
################

set -x

aws s3 ls
# listing s3 buckets
# aws ec2 describe-instances | jq '.Reservations[].Instances[] | {InstanceId, InstanceType}'


aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
# listing aws instances

aws lambda list-functions
# listing lambda functions

aws iam list-users
# listing aws users

