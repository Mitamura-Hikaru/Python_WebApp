#syntax=docker/docker:1
FROM python:3.8-slim-buster
RUN pip3 install -r requirements.txt
COPY static static
COPY templates templates
COPY appp.py app.py
COPY test_db test_db
COPY test_model.py test_model.py
CMD ["python3","-m","flask","run","--host=0.0.0.0"]