FROM openjdk:8
#ADD <PATH_JAR_EN_TU_PROYECTO> <PATH_DENTRO_DEL_CONTAINER_DONDE_QUERES_AGREGARLO> Con este comando agrego mi jar al container docker
ADD target/pruebaDocker-0.0.1-SNAPSHOT.jar pruebaDocker-0.0.1-SNAPSHOT.jar
EXPOSE 8085
#Indicamos el comando que queremos que el container ejecute cuando corro mi app. Como vemos es como cuando vos haces en el cmd para ejecutar un jar: java -jar <nombre>.jar
ENTRYPOINT ["java","-jar","pruebaDocker-0.0.1-SNAPSHOT.jar"]

