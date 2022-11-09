SHELL := bash
#.SHELLFLAGS := -euo pipefail
.ONESHELL:
.SILENT:

local:
	pip install -r flask-app/requirements.txt
	FLASK_APP=flask-app/app flask run

venv:
	python3 -m venv .flask-venv
	source .flask-venv/bin/activate
	pip install -r flask-app/requirements.txt
	FLASK_APP=flask-app/app flask run

docker:
	docker build --tag flask-docker .
	docker run -it -p 5000:5000 -d flask-docker

elastic-beanstalk:
