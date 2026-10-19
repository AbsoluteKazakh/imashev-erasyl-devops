FROM python:3.12-slim

WORKDIR /app

COPY app/main.py .

RUN python -m compileall -q main.py

EXPOSE 8080

CMD ["python", "-u", "main.py"]
