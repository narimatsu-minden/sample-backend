FROM node:22.7.0-alpine

WORKDIR /app
COPY package*.json ./

RUN npm install --save-dev nodemon
RUN npm install -g prisma

COPY . .
RUN npm install
RUN npx prisma generate
RUN npm run build

EXPOSE 3001
CMD ["sh", "-c", "npx prisma migrate deploy && npm run start:dev"]