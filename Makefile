install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	# lint html
	tidy -q -e --drop-empty-elements no views/*.html
	# lint pug files
	pug-lint views/*.pug
	# lint Dockerfile
	hadolint Dockerfile

all: install lint
