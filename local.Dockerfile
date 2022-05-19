# syntax=docker/dockerfile:1

ARG PYTHON_VERSION=3.9
FROM python:${PYTHON_VERSION}-alpine

RUN pip install Flask

ENV FLASK_ENV development

WORKDIR /
COPY local.entrypoint.sh .
RUN chmod +x /local.entrypoint.sh
ENTRYPOINT ["/local.entrypoint.sh"]

WORKDIR /app

EXPOSE 9000
ENV FLASK_RUN_PORT 9000

CMD ["flask", "run", "--host=0.0.0.0"]
