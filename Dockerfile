FROM python:3.12
RUN pip install django==5.1.3
COPY . .

RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

