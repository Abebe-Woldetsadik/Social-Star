FROM python

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


WORKDIR /simplesocial

COPY Pipfile Pipfile.lock /simplesocial/
RUN pip install pipenv && pipenv install --system

COPY . /simplesocial/