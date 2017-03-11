# jenkins

`u6k.Jenkins`、要するに自分用のJenkinsです。Docker in Dockerが可能です。

[![CircleCI](https://circleci.com/gh/u6k/jenkins.svg?style=svg)](https://circleci.com/gh/u6k/jenkins)

## Requirement

* Docker
* `$HOME/docker/jenkins/`フォルダ

## Build

`circle.yml`を参照。

## Installation

```
# stop container
$ docker kill jenkins || true
$ docker rm jenkins || true

# pull image
$ docker pull u6kapps/jenkins

# start container
$ docker run -d \
    --name jenkins \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $HOME/docker/jenkins:/root/.jenkins \
    -e VIRTUAL_HOST=jenkins.u6k.me \
    -e VIRTUAL_PORT=8080 \
    -e LETSENCRYPT_HOST=jenkins.u6k.me \
    -e LETSENCRYPT_EMAIL=u6k.apps@gmail.com \
    u6kapps/jenkins
```

## Author

* [os-setup - u6k.Redmine()](https://redmine.u6k.me/projects/os-setup)
* [u6k/jenkins](https://github.com/u6k/jenkins)
* [u6k.Blog()](http://blog.u6k.me/)

## License

* [MIT License](https://github.com/u6k/jenkins/blob/master/LICENSE)
