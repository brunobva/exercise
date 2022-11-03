SHELL=/bin/bash

currentFolder=$(shell basename "$$(pwd)")

export awsAccessKey=<please add your AWS Access Key Here>
export awsSecretKey=<please add your AWS Secret Key Here>
tf := docker run --rm --name terraform -ti -v /tmp:/bva terraform terraform

docker-build:
	@echo "Build a Docker image to run Terraform ..."
	docker build -t terraform .
	@$(tf) version

apply:
	$(MAKE) docker-build
	@$(tf) plan -out exercisePlan
	@$(tf) apply exercisePlan

destroy:
	@$(tf) destroy 
