FROM python:3.10-slim-bullseye

WORKDIR /code

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir -p common & mkdir -p gateway & mkdir -p rpc
COPY common/ /code/common
COPY rpc/ /code/rpc
COPY gateway/ /code/gateway

RUN pip install -i https://pypi.douban.com/simple/ -U pip
RUN pip config set global.index-url https://pypi.douban.com/simple/
RUN pip install -r /code/gateway/requirements.txt

WORKDIR /code/gateway
CMD ["gunicorn", "-b", "0.0.0.0:9000", "wsgi:app"]
