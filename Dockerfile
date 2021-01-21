FROM python:3.9

ENV PYTHONBUFFERED 1

RUN mkdir /code

COPY . /code/

WORKDIR /code

COPY requirements.txt .

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python3", "manage.py", "runserver", "0.0.0.0", "8000"]