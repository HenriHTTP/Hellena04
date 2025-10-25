# Base: servidor Bedrock oficial
FROM itzg/minecraft-bedrock-server:latest

# Diretório de trabalho
WORKDIR /data

# Define permissões para o usuário padrão (UID/GID 1000)
RUN chown -R 1000:1000 /data && \
    chmod -R 755 /data