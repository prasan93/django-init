FROM python:3.9.7-buster
RUN apt-get update
RUN apt-get install libssl-dev libffi-dev
RUN pip install --upgrade pip
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . /app
COPY ./django-entrypoint.sh /
ENTRYPOINT ["sh","/django-entrypoint.sh"]
