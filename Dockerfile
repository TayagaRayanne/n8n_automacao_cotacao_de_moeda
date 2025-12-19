# Usa a imagem oficial do n8n baseada em Alpine (leve e segura)
FROM n8nio/n8n:latest

# Define o usuário root para garantir permissões de execução
USER root

# Expõe a porta que configuramos no Render
ENV PORT=10000
EXPOSE 10000

# Comando de inicialização correto para o binário do n8n
CMD ["n8n", "start"]
