FROM  python:slim-buster
COPY . /usr/app
WORKDIR /usr/app
EXPOSE 8000
RUN pip install -r requirements.txt
RUN python manage.py collectstatic
ENTRYPOINT [ "python","manage.py" ,"runserver","0.0.0.0:8000"]