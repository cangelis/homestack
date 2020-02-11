# My development environment

- Multiple php versions
- Multiple mysql versions (5.7 and 8.0)
- mailhog
- redis
- nginx

## Usage

### Build

Build the images

```
docker-compose build php73 php56 php70 php72 nginx
```

### Run

Make sure you `up` `nginx` after all the services are up, since it can't work without fpms start.

```
docker-compose up -d mysql57 mysql80 php73 php56 php70 php72 redis mailhog
docker-compose up -d nginx
```
