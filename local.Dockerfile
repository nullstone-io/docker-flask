# syntax=docker/dockerfile:1

ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION}-alpine

RUN pip install Flask

ENV FLASK_ENV development

WORKDIR /
COPY local.entrypoint.sh .
RUN chmod +x /local.entrypoint.sh
ENTRYPOINT ["/local.entrypoint.sh"]

WORKDIR /app

EXPOSE 9000
ENV PORT 9000

CMD flask run --host=0.0.0.0 --port=9000
