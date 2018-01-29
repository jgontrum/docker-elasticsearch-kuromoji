# docker-elasticsearch-kuromoji-neologd
elasticsearch(6.1.2) + kuromoji + neologd with disabled X-Pack security.

## Usage

```
$ docker pull mgi166/elasticsearch-kuromoji-neologd
$ docker run --rm -it -p 9200:9200 -p 9300:9300 -e "http.host=0.0.0.0" -e "transport.host=127.0.0.1" mgi166/elasticsearch-kuromoji-neologd
$ curl http://localhost:9200/_cat/health
1511686279 08:51:19 docker-cluster yellow 1 1 6 6 0 0 6 0 - 50.0%
```

## Dockerhub

[mgi166/elasticsearch-kuromoji-neologd - Docker Hub](https://hub.docker.com/r/mgi166/elasticsearch-kuromoji-neologd/)

## Notes

[codelibs/elasticsearch-analysis-kuromoji-neologd](https://github.com/codelibs/elasticsearch-analysis-kuromoji-neologd)
