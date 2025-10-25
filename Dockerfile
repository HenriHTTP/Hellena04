# Base: servidor Bedrock oficial
FROM itzg/minecraft-bedrock-server:latest

# Diretório de trabalho
WORKDIR /data

# Cria pasta de addons (se não existir)
RUN mkdir -p /data/addons

# Define permissões adequadas (ajuste UID/GID se necessário)
RUN chown -R 1000:1000 /data && chmod -R 755 /data