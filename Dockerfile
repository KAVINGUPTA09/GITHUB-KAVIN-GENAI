FROM python:3.12-slim

WORKDIR /app

# Requirements copy karke install karein
COPY KU-CS-MLOPS-main/mlops-first-pipeline/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Model aur code copy karein
COPY KU-CS-MLOPS-main/mlops-first-pipeline/ .

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
