WORDPRESS WITH DOCKER FOR DEV
====

## PREPARE

### 0. .ENV
* Rename .env-example to .env

### 1. WORDPRESS
* 1-1. Place your wordpress git repository into ./
* 1-2. Modify WORDPRESS_GIT_REPO on .env

### 2. DATA
* 2-1. Dump(export) and prepare .sql file
* 2-2. Rename the .sql file to install_wordpress.sql
* 2-3. Place install_wordpress.sql into ./.data/

### 3. PATCH SQL
* 3-1. Rename sample-patch.sql to patch.sql
* 3-2. Replace new_url to yours
	* e,g, http://localhost:8000
* 3-3. Replace old_url to yours
	* e,g, https://github.com
* 3-4. Place the patch.sql into ./.data/

## RUN
```
docker-compose up -d --build
```

## START&STOP
```
docker-compose start
docker-compose stop
```

## DELETE
* After delete, also delete ./.data/db/
* After delete, also delete ./.html/

```
docker-compose down
```

## STATUS
```
docker ps -a
```

## LOG
```
docker-compose logs -f
```

## If have trouble access localhost
* delete cache from browser

## SEE
* [wordpress](http://localhost:8000/)
* [phpmyadmin](http://localhost:9010/)
* [mailhog](http://localhost:8025/)
