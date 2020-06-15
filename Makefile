install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	tidy -q -e --drop-empty-elements no views/*.html
	pug-lint views/*.pug

all: install lint
