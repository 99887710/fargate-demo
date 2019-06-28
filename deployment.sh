#!/usr/bin/env bash

#maven flow (build, package)
mvn clean package

#docker flow()
docker build -t fargate-demo-0.0.1 .

 while [[ "$#" -gt 0 ]]
  do
    case $1 in
      -p|--profile)
        PROFILE=$2;;
    esac
    shift
  done

#  echo "PROFILE: $PROFILE"

#aws ecr flow
ECR_LOGGING_CMD="$(aws ecr get-login --profile $PROFILE --no-include-email --region eu-west-1)"

eval "${ECR_LOGGING_CMD}"

docker push 898590847922.dkr.ecr.eu-west-1.amazonaws.com/fargate-demo-0.0.1:latest
