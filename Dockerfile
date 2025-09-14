FROM nginx:alpine

# Instalar dependencias necesarias
RUN apk add --no-cache bash gettext python3

# Copiar archivos de la app
COPY index.html /usr/share/nginx/html/index.html
COPY config.tpl.js /usr/share/nginx/html/config.tpl.js
COPY entrypoint.sh /entrypoint.sh

# Dar permisos de ejecución al entrypoint
RUN chmod +x /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
