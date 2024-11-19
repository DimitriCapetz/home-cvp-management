### Generic Variables
SHELL := /bin/zsh

.PHONY: help
help: ## Display help message (*: main entry points / []: part of an entry point)
	@grep -E '^[0-9a-zA-Z_-]+\.*[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

################################################################################
# AVD Demo Fabric
################################################################################

.PHONY: fabric-build
fabric-build: ## Run ansible playbook to build Fabric configuration with CV
	ansible-playbook playbooks/fabric-build.yml -i inventory.yml --diff

.PHONY: fabric-cv-provision
fabric-cv-provision: ## Run ansible playbook to deploy Fabric via CV.
	ansible-playbook playbooks/cv-fabric-deploy.yml -i inventory.yml --diff

.PHONY: fabric-validate
fabric-validate: ## Run ansible playbook to validate Fabric.
	ansible-playbook playbooks/fabric-validate-state.yml -i inventory.yml --diff 
