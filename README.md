![](https://raw.githubusercontent.com/u1i/bambleweeny/master/img/bwy_small.png)

Bambleweeny is lightweight HTTP/REST based key-value store that offers identity, access & quota management. It's fast, easy to use, and well-documented.

Written in Python, using a Redis backend, deployable in a tiny container.

**Usage**:  
`curl -X POST http://bambleweeny/resources -d '{"content": "lorem ipsum"}' -H AUTH`


**Performance**:  
Requests per second: ~800 (read) and ~140 (write)  
Time per request: ~5ms (read), ~14ms (write) *[1]*

## Deploy using Docker

[Image on DockerHub](https://hub.docker.com/r/u1ih/bambleweeny/tags/) | [Dockerfile](Dockerfile) | [docker-compose.yml](docker-compose.yml) 

Assuming you have Docker and docker-compose installed, simply run this command:

`curl -sSL http://bit.ly/run-bambleweeny | sh`

## REST API

[Swagger File](https://github.com/u1i/bambleweeny/blob/master/swagger.json) | [Swagger UI](http://bambleweeny.sotong.io/) | [Postman Collection](postman_collection.json) | [Postman Docu](https://documenter.getpostman.com/view/1926148/RWaKT8rF)

Check out the [Getting Started Guide](GettingStarted.md) for a detailed run-through for creating users and resources.


[![](https://raw.githubusercontent.com/u1i/bambleweeny/master/img/api.png)](http://bambleweeny.sotong.io/)


## Behind the Scenes
### Design Principles:

* minimal use of external libraries
* readable code over performance
* prototype / educational nature

### Stack & Tools

* Python, [Bottle](https://bottlepy.org/) WSGI Framework, [CherryPy](http://cherrypy.org/) thread-pooled webserver
* Redis
* Docker

[1] Tested with Apache Bench on a 4x2.0 GHz 32 GB RAM machine at [packet.net](https://www.packet.net/cloud/servers/x1-small/)

*[Where does the name come from?](http://hitchhikers.wikia.com/wiki/Bambleweeny_57_Submeson_Brain)*
