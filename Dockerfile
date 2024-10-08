FROM node:22
WORKDIR /app
COPY package*.json ./
RUN npm install -g nodemon
RUN npm install
COPY . /app/
RUN npm run build
EXPOSE 3001
CMD [ "npm", "run", "start:dev" ]