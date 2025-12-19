FROM n8nio/n8n:latest
USER root
# Define a porta que o Render exige
ENV PORT=10000
EXPOSE 10000
# Usa o caminho absoluto (completo) para o executável do n8n
CMD ["/usr/local/bin/n8n", "start"]
