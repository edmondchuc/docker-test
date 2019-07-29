FROM python:3-alpine

RUN apk add git
RUN git clone https://github.com/edmondchuc/dockter-test.git

WORKDIR /dockter-test

RUN pip3 install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3"]

CMD ["app.py"]

