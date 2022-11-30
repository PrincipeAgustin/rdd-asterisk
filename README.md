# rdd-asterisk
Repositorio que contiene la imagen de docker, configuraciones y comandos para correr el contenedor de asterisk implementado en la materia de Redes de Distribución de la carrera de Ingeniería en Telecomunicaciones de la Universidad Nacional de Río Cuarto

## Ejecución

Para ejecutar el contenedor directamente desde el repositorio, se debe clonar o descargar el codigo del repositorio, extraer los archivos y una vez dentro de la carpeta con una terminal, ejecutar:

``` bash
docker build . -t rdd/asterisk
```

Una vez buildeada la imagen, en la misma carpeta utilizamos:

``` bash
sudo docker run -d -it --name rdd-asterisk -v "$(pwd)"/conf:/etc/asterisk-conf --net=host --restart always rdd/asterisk
```

Con esto el contenedor iniciara. Al iniciar dentro del contenedor se ejecutara el codigo de `entrypoint.sh` el cual apartir del volumen montado en el comando, copia la configuración de asterisk a la carpeta correspondiente.
