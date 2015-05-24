Docker ElasticSearch
======

Docker image for ElasticSearch add Plugin

usage
=====

```
git clone https://github.com/ysaotome/docker-elasticsearch.git
```

```
docker build -t ysaotome/docker-elasticsearch docker-elasticsearch/
```

* setup ElasticSearch Cluster

```
docker run -d \
    --name elasticsearch-01 \
    -p 9200:9200 \
    -v /path/to/elasticsearch/01/data:/usr/share/elasticsearch/data \
    ysaotome/elasticsearch -Des.node.name="elasticsearch-01"
```

```
docker run -d \
    --name elasticsearch-02 \
    -p 9201:9200 \
    -v /path/to/elasticsearch/02/data:/usr/share/elasticsearch/data \
    ysaotome/elasticsearch -Des.node.name="elasticsearch-02"
```

```
docker run -d \
    --name elasticsearch-03 \
    -p 9201:9200 \
    -v /path/to/elasticsearch/03/data:/usr/share/elasticsearch/data \
    ysaotome/elasticsearch -Des.node.name="elasticsearch-03"
```

* check cluster status
    * http://localhost:9200/_plugin/head/

