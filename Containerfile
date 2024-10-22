# Usar la imagen oficial de Apache
FROM httpd:2.4

# Exponer el puerto 82
EXPOSE 80

# Copiar el index.html al directorio de Apache
COPY index.html /usr/local/apache2/htdocs/

# Configurar Apache para que escuche en el puerto 82
# RUN sed -i 's/^Listen 80/Listen 82/' /usr/local/apache2/conf/httpd.conf

# Iniciar Apache en el primer plano
CMD ["httpd-foreground"]




