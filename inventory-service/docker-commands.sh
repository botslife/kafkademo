# run kafka and mongodb before this
docker build --target docker-dev -t ecom-inventory-api-app .
docker run --rm --network ecom -dp 30000:30000 --name ecom-inventory-api-server ecom-inventory-api-app

docker network create ecom
docker build -t inventory-api-app .
docker run --rm --network ecom -dp 30001:30001 --name inventory-api-server inventory-api-app