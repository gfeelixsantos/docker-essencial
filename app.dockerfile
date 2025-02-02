FROM alpine:3.15
RUN apk add --no-cache nodejs npm

WORKDIR /app

ENV MONGODB=mongo

COPY package*.json ./

RUN npm install

COPY . .

CMD [ "node", "app.js" ]

EXPOSE 80