## Django Development With Docker Compose and Machine

Featuring:

- Docker v1.11.2
- Docker Compose v1.7.1
- Docker Machine v0.7.0
- Python 3.5

Qiita post ->

### OS X Instructions

1: Create App and nginx build images
```
$ cd ./app
$ docker build .
$ docker tag <app image id> todo_app
```

```
$ cd ./nginx
$ docker build .
$ docker tag <app image id> todo_nginx
```


2: Start services for development
```
$ ./docker-compose.sh dev up --build
```

3: execute migrations
```
$ docker exec -it <dev app container name or id> ./manage.py migrate
```

4: Grab IP - `docker-machine ip dev` - and view in your browser
