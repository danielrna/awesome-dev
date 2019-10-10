### docker
docker run -p 27017:27017 mongo

docker-machine ip

# create a cluster + a manager
docker-machine create -d virtualbox vm1
docker-machine create -d virtualbox vm2
docker-machine ssh vm1 "docker swarm init --advertise-addr 192.168.99.100 --listen-addr 127.0.0.1"
docker-machine ssh vm2 "docker swarm join --token SWMTKN-1-2bpjph5gzp45q92rf61m0iszolrrbpyvfra3nekky9aexn9s2b-9t7d9xjjq3qoroidbutwo3xsh 192.168.99.100:2377"


# mongo
mongodump --host <IP FROM> --port <PORT FROM> --db <DB FROM> --archive | mongorestore --host <IP TO> --port <PORT TO> --archive


# tunnel
ssh -L <local port to forward to>:<address to reach, from the remote machine>:<targeted port> droina@<ip of remote machine>
