FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install --production

COPY . .

RUN npm install express

RUN npm install socket.io

EXPOSE 3000

CMD ["npm", "start"]
