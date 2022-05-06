build:
	docker build -t nullstone/flask:local -f local.Dockerfile .
	docker build -t nullstone/flask .

push:
	docker push nullstone/flask:local
	docker push nullstone/flask
