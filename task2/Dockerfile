# Use base image with python
FROM ubuntu:20.04

# Define environment variable
ENV BRANCH="mysql"

RUN apt-get update && apt-get install unzip
RUN apt-get install -y python3
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y python3-pip
RUN apt-get install -y libmysqlclient-dev

ADD https://github.com/allburov/django-helloworld/archive/${BRANCH}.zip /tmp/app.zip
RUN unzip /tmp/app.zip -d /tmp/app && \
    mv /tmp/app/django-helloworld-${BRANCH} /app

WORKDIR /app

RUN pip3 install --upgrade pip setuptools wheel
RUN pip3 install minepy
RUN pip3 install -r requirements.txt

EXPOSE 8000

CMD python3 manage.py migrate && \
    python3 manage.py runserver 0.0.0.0:8000 --noreload