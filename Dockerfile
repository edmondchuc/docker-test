FROM python:3-alpine

RUN apk add --no-cache git
RUN git clone https://github.com/edmondchuc/dockter-test.git

WORKDIR /dockter-test

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt --no-cache-dir

EXPOSE 8000

CMD gunicorn -b 0.0.0.0:8000 app:app
