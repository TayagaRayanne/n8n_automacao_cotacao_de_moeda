FROM n8nio/n8n:latest
USER root
ENV PORT=10000
EXPOSE 10000
CMD ["n8n", "start"]
