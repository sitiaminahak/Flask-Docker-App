FROM python:3.7
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
ENV FLASK_APP=app.py
CMD ["flask", "run", "--host", "0.0.0.0"]


#https://medium.com/geekculture/how-to-dockerize-your-flask-application-2d0487ecefb8