# Base Image
FROM node:14-alpine

# Set workdir to /app
WORKDIR /app

# Copy files from project into container
COPY . .

# Set env into production mode and database
ENV NODE_ENV=production DB_HOST=item-db

# Run node packages installation and build the project
RUN npm install --production --unsafe-perm -y && npm run build

# Expose port 8080
EXPOSE 8080

# Run command npm start
CMD [ "npm", "start" ]