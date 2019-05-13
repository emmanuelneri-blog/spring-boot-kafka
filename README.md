# spring-boot-kafka

## Pré requisitos

- Maven 3+
- Java 8+
- Docker 18.02.0+ 

## Preparando ambiente

- Execute o `docker-compose up` para inicializar o Zookeeper e Kafka.
- Execute `mvn clean package` na pasta do projeto para realizar o build das aplicações.

## Executando 

- Inicialize o projeto `producer`
````
cd producer
mvn spring-boot:run
````

Obs: a aplicação Producer disponibiliza o endpoint `POST http://localhost:8080/orders` para receber os eventos dos pedidos.


-  Inicialize o projeto `consumer`
````
cd consumer
mvn spring-boot:run
````
Obs: O projeto do consumer não tem endpoint, ele apenas conecta no tópico do Kafka para escutar o stream.


## Executando 


Para testar, pode ser utilizado o seguinte comando: `./send-order.sh "{\"identifier\": \"12343\",\"customer\": \"Customer X\", \"value\": 1500}"`, onde será inserido o pedido no tópico do Kafka, via a aplicação `producer`, e será cosumido pela aplicação `consumer`, como no log abaixo:
````
2019-05-13 19:41:45.033  INFO 2103 --- [ntainer#0-0-C-1] b.c.emmanuelneri.consumer.OrderConsumer  : Order: Order(identifier=12343, customer=Customer X, value=1500)
````
