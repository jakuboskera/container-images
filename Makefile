.ONESHELL:
.SHELL := /bin/bash
.DEFAULT_GOAL := help

help:
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: pre-commit-install pre-commit-all

pre-commit-install: ## Install pre-commit into your git hooks. After that pre-commit will now run on every commit
	pre-commit install --hook-type commit-msg

pre-commit-all: ## Manually run all pre-commit hooks on a repository (all files)
	pre-commit run --all-files

# New targets here
