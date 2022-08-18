# run kafka and mongodb before this
docker build --target docker-dev -t ecom-shipping-api-app .
docker run --rm --network ecom -dp 30000:30000 --name ecom-shipping-api-server ecom-shipping-api-app