FROM python:alpine

RUN mkdir -p /app
WORKDIR /app

COPY . .
RUN apk --update add --no-cache build-base cmake
RUN pip install -r requirements.txt

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

EXPOSE 5000
