FROM python:3.11.4-bullseye

WORKDIR /code

COPY requirements.txt .

COPY connect4.py .

COPY app.py .

RUN pip3 install -r requirements.txt

EXPOSE 8001

CMD ["python3", "app.py"]
