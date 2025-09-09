FROM node:24-slim

WORKDIR /home/node/app

# Copia apenas os manifests primeiro (para aproveitar cache de build)
COPY package*.json ./

# Instala dependências (inclui express do package.json)
RUN npm install

# Copia o restante do código
COPY . . 

# Comando padrão para iniciar a aplicação
CMD node index.js