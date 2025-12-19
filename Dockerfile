# Usa a imagem oficial do n8n
FROM n8nio/n8n:latest

# Define que o n8n deve rodar na porta que o Render espera (10000)
ENV PORT=10000
EXPOSE 10000

# Comando para iniciar o n8n
CMD ["n8n", "start"]
