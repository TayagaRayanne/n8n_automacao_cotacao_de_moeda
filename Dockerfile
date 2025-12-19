# Usamos uma imagem base do Node.js que é padrão no Render
FROM node:18-alpine

# Instala as dependências necessárias para o n8n rodar no Alpine
RUN apk add --no-cache python3 make g++

# Instala o n8n globalmente
RUN npm install -g n8n

# Define a porta do Render
ENV PORT=10000
EXPOSE 10000

# Inicia o n8n usando o comando direto instalado pelo npm
CMD ["n8n", "start"]
