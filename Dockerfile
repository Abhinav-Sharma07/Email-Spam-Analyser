# dockerfile, docker image, container
FROM python:3.12.0
WORKDIR /app
COPY . /app
ADD app.py .


RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

ENV NAME=World
CMD [ "python","./app.py" ]