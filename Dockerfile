FROM node:10.7-alpine
WORKDIR /app
COPY . /app
RUN npm install
RUN npm run prestart:prod
ENTRYPOINT [ "npm","run","start:prod" ]