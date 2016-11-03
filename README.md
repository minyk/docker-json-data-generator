Docker image for json-data-generator
------------------------------------

# Container Volumes

* `/json-data-generator/logs`: Volume for `logger` producer
* `/json-data-generator/conf`: Volume for config files

# Running

* Mount config directory to `/json-data-generator/conf`. The name of simulate configuration file is `SimConfig.json`.
* If you use `logger` producer, mount log directory to `/json-data-generator/logs`.
* Then running the container:
```
$ docker run -it -d -v /docker-json-data-generator/logs:/json-data-generator/logs:rw -v /docker-json-data-generator/conf --name json-data-generator minyk/json-data-generator 
``` 
