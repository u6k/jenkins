# jenkins

[![GitHub tag](https://img.shields.io/github/tag/u6k/jenkins.svg)](https://github.com/u6k/jenkins) [![Docker Pulls](https://img.shields.io/docker/pulls/u6kapps/jenkins.svg?style=flat-square)](https://hub.docker.com/r/u6kapps/jenkins/) [![Travis](https://img.shields.io/travis/u6k/jenkins.svg)](https://travis-ci.org/u6k/jenkins) [![license](https://img.shields.io/github/license/u6k/jenkins.svg?style=flat-square)](https://github.com/u6k/jenkins/blob/master/LICENSE)

`u6k.Jenkins`、要するに自分用のJenkinsです。Docker in Dockerが可能です。

## Requirement

* Docker

```
$ docker version
Client:
 Version:      17.03.1-ce
 API version:  1.27
 Go version:   go1.7.5
 Git commit:   c6d412e
 Built:        Tue Mar 28 00:40:02 2017
 OS/Arch:      windows/amd64

Server:
 Version:      17.04.0-ce
 API version:  1.28 (minimum version 1.12)
 Go version:   go1.7.5
 Git commit:   4845c56
 Built:        Wed Apr  5 18:45:47 2017
 OS/Arch:      linux/amd64
 Experimental: false
```

* `${DOCKER_VOLUMES}/jenkins`フォルダ

## Build

```
$ docker-compose build
```

## Installation

```
$ docker-compose up -d
```

## Author

- [os-setup - u6k.Redmine()](https://redmine.u6k.me/projects/os-setup)
- [u6k/jenkins](https://github.com/u6k/jenkins)
- [u6k.Blog()](http://blog.u6k.me/)

## License

- [MIT License](https://github.com/u6k/jenkins/blob/master/LICENSE)
