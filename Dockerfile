FROM node:18-alpine3.18

RUN npm install pm2

WORKDIR /src

COPY . .

RUN npm run setup

CMD ["npm", "run", "start"]

EXPOSE 3000