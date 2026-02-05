FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && apt-get install -y gcc && rm -rf /var/lib/apt/lists/*

COPY dependencies.txt .
RUN pip install --no-cache-dir -r dependencies.txt

COPY honeypot_server.py .

RUN mkdir -p /app/conversation_logs

ENV PYTHONPATH=/app

EXPOSE 8000

CMD ["python", "honeypot_server.py"]