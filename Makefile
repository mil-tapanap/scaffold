install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

install-azure:
	pip install --upgrade pip &&\
		pip install -r requirements-azure.txt

format:
	black *.py
	
lint:
	pylint --disable=R, C hello.py
	
test:
	python -m pytest -vv --cov=hello test_hello.py

hello:
	echo "hello world"

greeting:
	echo "Sawasdee ja"
	
all: install lint test

all2: hello greeting
