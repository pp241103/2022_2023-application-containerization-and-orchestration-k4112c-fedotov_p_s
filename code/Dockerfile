FROM python:3.10.12-bullseye

WORKDIR /code

COPY . .

RUN pip3 install -r requirements.txt

EXPOSE 8080 8001

CMD ["python3", "-m", "http.server", "8080"]

