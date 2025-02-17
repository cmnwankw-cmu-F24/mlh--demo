FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# Create the uploads directory
RUN mkdir -p uploads

EXPOSE 3000

CMD ["npm", "start"]
