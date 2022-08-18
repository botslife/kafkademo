# run kafka and mongodb before this
docker build --target docker-dev -t ecom-order-api-app .
docker run --rm --network ecom -dp 30000:30000 --name ecom-order-api-server ecom-order-api-app