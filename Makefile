install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pug-lint ./*.pug

all: install lint test
