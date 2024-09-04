FROM python:alpine

RUN mkdir -p /app
WORKDIR /app

COPY . .
RUN apk --update add --no-cache build-base cmake
RUN pip install -r requirements.txt

CMD [ "waitress-serve", "--port=5000", "app:app" ]

EXPOSE 5000
