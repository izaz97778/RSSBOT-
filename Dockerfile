FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN apt update && apt install -y gcc libffi-dev && \
    pip install --no-cache-dir -r requirements.txt

CMD ["python", "rss.py"]
