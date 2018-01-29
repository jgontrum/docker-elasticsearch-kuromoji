# docker-elasticsearch-kuromoji
elasticsearch(6.1.2) + kuromoji with disabled X-Pack security.

## Usage

```
$ docker pull jgontrum/elasticsearch-kuromoji
$ docker run --rm -it -p 9200:9200 -p 9300:9300 -e "http.host=0.0.0.0" -e "transport.host=127.0.0.1" mgi166/elasticsearch-kuromoji-neologd
$ curl http://localhost:9200/_cat/health
1511686279 08:51:19 docker-cluster yellow 1 1 6 6 0 0 6 0 - 50.0%
```

## Analyze

First create an index
```json
{
	"settings": {
		"index": {
			"number_of_shards": 1,
			"number_of_replicas": 0,
			"analysis": {
				"tokenizer": {
					"kuromoji_with_punct": {
						"type": "kuromoji_tokenizer",
						"mode": "normal",
						"discard_punctuation": "false"
					}
				},
				"analyzer": {
					"kuromoji_with_punct": {
						"type": "custom",
						"tokenizer": "kuromoji_with_punct"
					}
				}
			}
		}
	}
}
```

Then fire a request

```json
{
	"analyzer": "kuromoji_no_punct",
	"text": "スマホ"
}
```

## Dockerhub

[jgontrum/elasticsearch-kuromoji - Docker Hub](https://hub.docker.com/r/jgontrum/elasticsearch-kuromoji/)

## Notes

[codelibs/elasticsearch-analysis-kuromoji-neologd](https://github.com/codelibs/elasticsearch-analysis-kuromoji-neologd)
