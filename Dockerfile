FROM docker.elastic.co/elasticsearch/elasticsearch:6.1.2
USER root

ADD config/elasticsearch.yml /usr/share/elasticsearch/config/
RUN chown elasticsearch:elasticsearch config/elasticsearch.yml

RUN cd /usr/share/elasticsearch && bin/elasticsearch-plugin install analysis-kuromoji

USER elasticsearch
