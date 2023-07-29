install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv *.py

format:
	black *.py

lint:
	pylint --disable=R,C,E1120,W0621 *.py

all: install lint test