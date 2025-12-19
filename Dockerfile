# Voltamos para a imagem oficial, mas com um comando de início blindado
FROM n8nio/n8n:latest

# Define a porta do Render
ENV PORT=10000
EXPOSE 10000

# Comando que aponta direto para o arquivo de execução interna
CMD ["n8n", "start"]
