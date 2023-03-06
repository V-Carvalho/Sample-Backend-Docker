# imagem base alpine com node
FROM node:alpine 

# diretório utilizado dentro do container
WORKDIR /sample-backend

# arquivos a serem copiados na criaçao da imagem
COPY index.js .
COPY package.json .

# comando a ser execultado durante a criação da imagem
RUN npm install

# Porta que o container vai expor
EXPOSE 2000

# comandos a serem usados p/ inicair o app
CMD node index.js

# construindo a imagem
# docker build -t vicarvalho/sample-backend:v1.0 .
# docker build -t <nomde da img>:<tag> .

# rodando o container
# docker run --name sample-backend -p 2000:2000 -d sample-backend:v1.0
# docker run --name <nome do container> -p <porta do host:porta do container> -d <mantem o container rodando em background> <nome da imagem>:<tag>


