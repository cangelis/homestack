# My development environment

This is my development environment which is very extendable and customizable.

Some features:

- Multiple php versions (5.6, 7.0, 7.1, 7.2, 7.3 and 7.4)
- Multiple mysql versions (5.7 and 8.0)
- mailhog
- redis (5.0)
- nginx (1.17)
- Easy to add custom build scripts
- Easy to add custom configurations

## Usage

### Build

Build the images you wish to use.

```
docker-compose build nginx117 mysql80 php56 php70 redis50
```

### Run

```
docker-compose up -d mysql57 mysql80 php73 php56 php70 php72 redis50 mailhog
docker-compose up -d nginx117
```

## Documentation

Documentation lives in [wiki](https://github.com/cangelis/dev_env/wiki)
