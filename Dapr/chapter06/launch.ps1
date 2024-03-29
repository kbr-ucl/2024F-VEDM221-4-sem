docker run -d -p 5672:5672 -p 15672:15672 --name dtc-rabbitmq rabbitmq:3-management
http://localhost:15672/
dapr run --app-id "order-service" --app-port "5001" --dapr-grpc-port "50010" --dapr-http-port "5010" --resources-path "./components" -- dotnet run --project ./sample.microservice.order/sample.microservice.order.csproj --urls="http://+:5001"
dapr run --app-id "reservation-service" --app-port "5002" --dapr-grpc-port "50020" --dapr-http-port "5020" --resources-path "./components" -- dotnet run --project ./sample.microservice.reservation/sample.microservice.reservation.csproj --urls="http://+:5002"
dapr run --app-id "customization-service" --app-port "5003" --dapr-grpc-port "50030" --dapr-http-port "5030" --resources-path "./components" -- dotnet run --project ./sample.microservice.customization/sample.microservice.customization.csproj --urls="http://+:5003"
