FROM python:3.12.3
WORKDIR /app
RUN apt-get update && apt-get install iputils-ping -y
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENTRYPOINT ["python3", "scanner.py"]
