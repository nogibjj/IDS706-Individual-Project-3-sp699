install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:	
	black *.py 

lint:
	ruff *.py

test:
	python -m pytest -vv --cov=test_main *.py
		
all: install test format lint