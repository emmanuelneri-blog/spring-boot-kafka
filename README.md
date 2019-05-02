# spring-boot-kafka

## Pré requisitos

- Maven 3+
- Java 8+
- Docker 18.02.0+ 

## Preparando ambiente

Para fazer o build e criar as imagens docker das aplicações Consumer e Producer, execute:

- ```./build.sh```

## Executando 

Após a construção das imagens dockers, executar o `docker-compose up` para inicializar o Zookeeper, Kafka e as aplicações.

Com isso, a aplicação Consumer disponibiliza o endpoint `POST http://localhost:8080/orders` para receber os eventos dos pedidos.

Para testar, pode ser utilizado o seguinte comando: `./send-order.sh "{\"identifier\": \"12343\",\"customer\": \"Customer X\", \"value\": 1500}"`


#### Encerrando

Para finalizar a execução do ambiente, execute `docker-compose rm -f`.