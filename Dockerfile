# Usa la imagen oficial de MySQL
FROM mysql:8.0

# Variables de entorno para la base de datos
ENV MYSQL_DATABASE=servletlogin
ENV MYSQL_ROOT_PASSWORD=admin123

# Copiar el script SQL para autoejecutarse al iniciar el contenedor
COPY servletlogin.sql /docker-entrypoint-initdb.d/

# Exponer el puerto de MySQL
EXPOSE 3306
