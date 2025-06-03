FROM node
ENV NPM_CONFIG_LOGLEVEL info

FROM thefinitemonkey/electronic-detective
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=8888

EXPOSE 8888

CMD ["npm", "start"]
