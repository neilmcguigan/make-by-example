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
	cd flask-app
	pip install -r requirements.txt
	flask run	