FROM node:20.0-alpine

WORKDIR /api

COPY package*.json .

RUN npm install
RUN npm install -g nodemon

COPY . .


CMD npx nodemon app.js



# # Use uma imagem base do Node.js
# FROM node:latest

# # Defina o diretório de trabalho dentro do contêiner
# WORKDIR /app

# # Copie o arquivo package.json e package-lock.json para o diretório de trabalho
# COPY package*.json ./

# # Copie todo o código-fonte para o diretório de trabalho
# COPY . .

# # Execute o comando npm install para instalar as dependências
# RUN npm install
# RUN npm install bcrypt

# # Exponha a porta em que o servidor Express está ouvindo (se necessário)
# # EXPOSE <porta>

# # Defina o comando padrão para iniciar o servidor usando o nodemon
# CMD ["npx", "nodemon", "app"]


