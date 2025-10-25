# Base: servidor Bedrock oficial
FROM itzg/minecraft-bedrock-server:latest

# Diretório de trabalho
WORKDIR /data

# Cria pasta de addons
RUN mkdir -p /data/addons

# Copia addons do host para a imagem (será sobrescrito pelo volume, cuidado!)
COPY ./bedrock_addons /data/addons

# Define permissões para o usuário padrão (UID/GID 1000)
RUN chown -R 1000:1000 /data && \
    chmod -R 755 /data && \
    chmod -R 775 /data/addons && \
    find /data/addons -type d -exec chmod 775 {} \; && \
    find /data/addons -type f -exec chmod 664 {} \;