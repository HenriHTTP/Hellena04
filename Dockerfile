# Base: servidor Bedrock oficial
FROM itzg/minecraft-bedrock-server:latest

# Diretório de trabalho
WORKDIR /data
# EXPOSE 19132 e EXPOSE 44433 (ou 25575) não são estritamente necessários no Dockerfile, 
# pois o docker-compose faz a publicação, mas mantemos para documentação.
EXPOSE 19132/udp
EXPOSE 25575/tcp

# Define permissões para o usuário padrão (UID/GID 1000)
RUN chown -R 1000:1000 /data && \
    chmod -R 755 /data
