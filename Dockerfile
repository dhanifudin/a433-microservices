FROM node:14-alpine

WORKDIR /app

COPY . .

RUN npm install --production --unsafe-perm -y && npm run build

EXPOSE 8080

# CMD ["tail", "-f", "/dev/null"]
CMD [ "npm", "start" ]