FROM node:12-alpine

RUN apk update && \
    apk add git

WORKDIR /app

COPY . .

RUN git submodule init && git submodule update

RUN npm install

CMD npm run initdb && npm run dev

EXPOSE 8080
