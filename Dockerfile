FROM python:3-alpine

ADD ./flaskapp /flaskapp

WORKDIR /flaskapp

RUN pip3 install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3"]

CMD ["app.py"]

