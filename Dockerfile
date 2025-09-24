FROM node:20.3.0-alpine3.18

# Create app directory
WORKDIR /app

# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

# Install app dependencies
RUN npm install --legacy-peer-deps

# Bundle app source
COPY . .

RUN npm run build

# Start the app  
CMD ["npm", "start"]