include .env
export

DROPLET_NAME ?= base

.PHONY: init plan apply destroy output fmt validate

init:
	terraform init

validate: init
	terraform validate

fmt:
	terraform fmt

plan: validate
	terraform plan

apply: validate
	terraform apply -auto-approve

destroy:
	terraform destroy -auto-approve

output:
	terraform output

provision:
	uv run ansible-playbook -i "$(terraform output -raw droplet_ip)," playbook.yml -v