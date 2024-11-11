FROM python:3.10-slim

WORKDIR /app
COPY . /app/
    
RUN pip install -r src/requirements.txt

EXPOSE 5000

CMD ["python3", "src/application.py"]