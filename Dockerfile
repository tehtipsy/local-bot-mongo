FROM mongo:latest

# Expose MongoDB's default port
EXPOSE 27017

ENV DB_NAME local_database 

COPY data/ /data/
COPY import.sh /docker-entrypoint-initdb.d/

CMD ["mongod"]