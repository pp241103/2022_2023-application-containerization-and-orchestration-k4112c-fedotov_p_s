FROM python:3.11.4-bullseye

WORKDIR /

COPY code/index.html .

COPY code/main.js .

COPY code/connect4.js .

COPY code/connect4.css .

EXPOSE 8080 8001

CMD ["python3", "-m", "http.server", "8080"]
