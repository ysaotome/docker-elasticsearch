FROM elasticsearch:1.5.2

MAINTAINER Yuichi Saotome <y@sotm.jp>

RUN /usr/share/elasticsearch/bin/plugin install mobz/elasticsearch-head
RUN /usr/share/elasticsearch/bin/plugin install elasticsearch/elasticsearch-analysis-kuromoji/2.5.0

COPY config /usr/share/elasticsearch/config

EXPOSE 9200 9300

CMD ["elasticsearch"]

