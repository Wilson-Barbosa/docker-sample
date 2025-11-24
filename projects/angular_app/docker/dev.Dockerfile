FROM node:22-alpine

WORKDIR /angular_app
COPY . /angular_app

RUN npm install -g @angular/cli
RUN npm install

EXPOSE 4200

CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "4200"]
