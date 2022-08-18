#different ways of running this ecom api application
# 1)cloud mongo cluster and kafka
# 2)docker-compose local docker images of  mongo, kafka ui, kafka two instances, zookeeper
# 3)docker-compose only for apps and rest all local installation of zookeeper, mongo and kafka

#two issues

# docker-compose up to start zookeeper, kafka1, kafka2, kafka ui, mongo
docker-compose up
docker build --target development -t coreapiapp .
docker run --rm --network nwfence -dp 11002:11002 --name core-api-server coreapiapp



docker build -t mongodb:replset .
docker run -d --name container_name \
        -e MONGO_INITDB_ROOT_USERNAME=root \
        -e MONGO_INITDB_ROOT_PASSWORD=root \
                 -v /Users/vanilla/Projects/practise/java-reactive/kafka-reactive/dockerdata/mongo:/data/db \
                 --name mongodb-replset -p 27017:27017 -d \
                 mongodb:replset


docker run -d --name container_name \
      -e MONGO_INITDB_ROOT_USERNAME=admin \
      -e MONGO_INITDB_ROOT_PASSWORD=password \
      mongo