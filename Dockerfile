FROM node:16-alpine

WORKDIR /app

COPY package*.json ./

COPY . .

RUN npm ci

ENV PORT=3000

EXPOSE $PORT

CMD ["npm", "start"] 
 
# Якщо використовується HTTPS, то треба добавити наступне:

# ENV SSL_CERT=/path/to/cert.pem

# ENV SSL_KEY=/path/to/private.key

# CMD ["node", "index.js", "--ssl-cert", "${SSL_CERT}", "--ssl-key", "${SSL_KEY}"]