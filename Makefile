## The Makefile includes instructions on environment setup and lint tests
# Install dependencies in requirements.txt
# hello.py should pass pylint

install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
	pip install -r requirements.txt

test:
	python -m pytest -vv test_hello.py

lint:
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203 hello.py  &&\
	pylint --disable=R,C,W1203 app.py

all:	install lint test
