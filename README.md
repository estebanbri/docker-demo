# docker-demo
Spring Boot app + Docker

#Ejecutar en la terminal lo siguiente para crear la imagen (dockerspringbootapp es el nombre de la imagen)
```sh
$ docker build -f Dockerfile -t dockerspringbootapp .
```

#Ejecutar en la terminal lo siguiente para correr la imagen en un container (dockerspringbootapp es el nombre de la imagen)
```sh
$ docker run -p 8085:8085 dockerspringbootapp
```

#En caso de que necesites modificar codigo, luego de haber creado la imagen vas a tener que hacer estos pasos:
```sh
0- mvn install (para generar un nuevo jar)
1- $ docker ps (para saber el nombre o id de los container para poder borrarlos)
2- $ docker kill <nombreContainer> (para poder matarlo necesitas frenarlo al container)
3- $ docker rm <nombreContainer> (para matar el container)
4- $ docker build -f Dockerfile -t dockerspringbootapp . (para generar una nueva imagen con el nuevo jar modificado)
5- $ docker run -p 8085:8085 dockerspringbootapp (para correr la nueva imagen en un container)
```

#Para saber el ip address del contenedor
```sh
$ docker inspect <nombre-container>
```