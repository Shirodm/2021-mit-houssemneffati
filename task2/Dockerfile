# Use base image with python
FROM python:3.8

# Define environment variable
ENV BRANCH="master"

# Download and unpack source code
# In a real project you'll use `ADD ./src`
ADD https://github.com/allburov/django-helloworld/archive/postgresql.zip /tmp/app.zip
RUN unzip /tmp/app.zip -d /tmp/app && \
    mv /tmp/app/django-helloworld-postgresql /app

# Make /app working directory
WORKDIR /app

# Install dependencies
RUN pip install -r requirements.txt

# Share port
EXPOSE 8000

# Command to run project
CMD python3 manage.py migrate && \
    python3 manage.py runserver 0.0.0.0:8000 --noreload