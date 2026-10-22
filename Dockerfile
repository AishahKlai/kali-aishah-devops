FROM python:3.12-slim
WORKDIR /app
COPY app/app.py .
RUN apt-get update && apt-get install -y --no-install-recommends curl && rm -rf /var/lib/apt/lists/*
EXPOSE 8080
CMD ["python", "app.py"]

