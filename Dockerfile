FROM mysql:8.0

ENV MYSQL_DATABASE=servletlogin
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}

# Copiar el SQL
COPY servletlogin.sql /docker-entrypoint-initdb.d/

# Escuchar en el puerto 10000
CMD ["mysqld", "--port=10000"]
