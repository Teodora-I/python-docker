FROM python:3.7-alpine

WORKDIR /app
ENV FLASK_APP myapp.py
ENV FLASK_RUN_HOST 0.0.0.0
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["flask", "run"]
CMD ["echo", "Created an image."]
