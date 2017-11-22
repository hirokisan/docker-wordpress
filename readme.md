WORDPRESS WITH DOCKER FOR DEV
====

## PREPARE

### WORDPRESS
* Place your wordpress into .html/

### DATA
* Place /var/lib/mysql into ./.data/db/, if you already have data
* Place install_wordpress.sql into ./.data/, if you have dump sql and remove comment out on docker-compose.yml

## RUN
```
docker-compose up -d --build
```

## WATCH
```
watch docker ps -a
```

## LOG
```
docker-compose logs -f
```

## SEE
* [wordpress](http://localhost:8000/)
* [mailhog](http://localhost:8025/)
