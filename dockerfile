FROM node:24-slim

WORKDIR /home/node/app

# Copia o restante do código
COPY . . 

# Instala dependências (inclui express do package.json)
RUN npm install

# Comando padrão para iniciar a aplicação
CMD node index.js