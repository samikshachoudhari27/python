FROM python:3.12.3-slim

WORKDIR /app

# requirements ko pehle copy karo taaki docker cache sahi se kaam kare
COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirement.txt

# ab source copy karo (venv ko docker context me na bhejo)
COPY . /app

EXPOSE 5000
CMD ["python3", "app.py"]

