FROM python:3.7
RUN pip install pipenv
COPY Pipfile* /tmp/
RUN cd /tmp && pipenv lock --requirements > requirements.txt
RUN pip install -r /tmp/requirements.txt
RUN pip install errbot
RUN pip install python-telegram-bot
RUN mkdir /tmp/app/
COPY . /tmp/app/
WORKDIR /tmp/app/src
CMD errbot -c src/config.py
