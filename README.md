# My development environment

- Multiple php versions (5.6, 7.0, 7.2 and 7.3)
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

### Connect from host

- MySQL 8 Port: 3307
- MySQL 5.7 Port: 3308
- MySQL credentails: user: `root` pass: `root`
- nginx uses 80 and 443
- Mailhog: http://localhost:8025 

### PHP CLI

Use bash to work on the php containers

Examples:

```
docker-compose exec php56 bash
docker-compose exec php70 bash
docker-compose exec php72 bash
docker-compose exec php73 bash
```

### nginx sites

Create the corresponding `.conf` file for each site into the `nginx/sites` folder.

### Custom runtime config for PHP containers

If you'd like to add to PATH or make custom aliases in the container create a `init.sh` file in `dev_env/php<VERSION>/home` folder.
This script will be ran by `.bashrc`.
