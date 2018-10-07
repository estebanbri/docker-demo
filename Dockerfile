FROM openjdk:8
#ADD <PATH_JAR_EN_TU_PROYECTO> <PATH_DENTRO_DEL_CONTAINER_DONDE_QUERES_AGREGARLO> Con este comando agrego mi jar al container docker
ADD target/pruebaDocker-0.0.1-SNAPSHOT.jar pruebaDocker-0.0.1-SNAPSHOT.jar
EXPOSE 8085
#Indicamos el comando que queremos que el container ejecute cuando corro mi app. Como vemos es como cuando vos haces en el cmd para ejecutar un jar: java -jar <nombre>.jar
ENTRYPOINT ["java","-jar","pruebaDocker-0.0.1-SNAPSHOT.jar"]

#Ejecutar en la terminal lo siguiente para crear la imagen (dockerspringbootapp es el nombre de la imagen)
#$ docker build -f Dockerfile -t dockerspringbootapp .

#Ejecutar en la terminal lo siguiente para correr la imagen en un container (dockerspringbootapp es el nombre de la imagen)
#$ docker run -p 8085:8085 dockerspringbootapp

#En caso de que necesites modificar codigo, luego de haber creado la imagen vas a tener que hacer estos pasos:
#0- mvn install (para generar un nuevo jar)
#1- $ docker ps (para saber el nombre o id de los container para poder borrarlos)
#2- $ docker kill <nombreContainer> (para poder matarlo necesitas frenarlo al container)
#3- $ docker rm <nombreContainer> (para matar el container)
#4- $ docker build -f Dockerfile -t dockerspringbootapp . (para generar una nueva imagen con el nuevo jar modificado)
#5- $ docker run -p 8085:8085 dockerspringbootapp (para correr la nueva imagen en un container)


