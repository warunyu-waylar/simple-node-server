FROM node:alpine

WORKDIR /app

COPY . .

RUN yarn install

EXPOSE 3000

ENTRYPOINT [ "yarn", "start" ]