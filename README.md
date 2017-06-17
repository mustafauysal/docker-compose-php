PHP 7.1 & Nginx Docker environment
==================================

## BUILD ##
Don't forget to re-build after changes
```
docker-compose build
docker-compose up -d
```

Override local images on build
```
docker-compose build --no-cache
```

## CONTAINER ##

Access to container
```
docker exec -ti <container_id|container_name> bash
```

## FILE UPLOAD ##

If you get file upload problem, check user id in `Dockerfile` located in `php-fpm` directory, or give permission 
```
docker exec -ti phpfpm chown -R www-data:www-data /var/www/wp-content/uploads
```

## Docker-Compose Autostart ##

If you want to automatic start after reboot add something like
```
@reboot repo-path/autostart.sh
```
to crontab. (check directory path in autostart.sh)