FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install --break-system-packages --no-cache-dir --upgrade pip setuptools wheel jaraco.context
RUN pip install --break-system-packages --no-cache-dir -r requirements.txt

CMD ["python", "app.py"]