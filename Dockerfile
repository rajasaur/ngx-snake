FROM node:10-buster

RUN mkdir /app
ADD . /app

WORKDIR /app

RUN npm install -g @angular/cli@latest
RUN npm install

EXPOSE 4200

CMD ["ng", "serve", "--host", "0.0.0.0"]
