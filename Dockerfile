FROM python:3.7
COPY . .
RUN pip install Flask==2.1.0
ENTRYPOINT ["python3", "app.py"]