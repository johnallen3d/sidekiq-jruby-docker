# Sidekiq on JRuby and Docker

Spin up Sidekiq in a JRuby based Docker container.

## Usage

Install `docker-compose` if not already.

```sh
bash <(curl -s "https://raw.githubusercontent.com/connexio-labs/system-bootstrap/master/script/docker-machine")
```

Bootstrap the environment.

```sh
git clone git@github.com:johnallen3d/sidekiq-jruby-docker.git
cd sidekiq-jruby-docker
docker-compose build
docker-compose up
```

In another tab queue some work

```sh
docker-compose run --rm workers bash -c "rake work"
```

![speed](https://dl.dropboxusercontent.com/s/s5znqmxhfxo85dr/2015-04-11%20at%205.57%20PM%202x.png?dl=0)
