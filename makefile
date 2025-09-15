.PHONY: test lint all

lint:
	pylint src

test:
	pytest --cov=./src/greeting

all: lint test