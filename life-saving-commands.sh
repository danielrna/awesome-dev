# docker
docker run -p 27017:27017 mongo

docker-machine ip

# mongo
mongodump --host <IP FROM> --port <PORT FROM> --db <DB FROM> --archive | mongorestore --host <IP TO> --port <PORT TO> --archive
