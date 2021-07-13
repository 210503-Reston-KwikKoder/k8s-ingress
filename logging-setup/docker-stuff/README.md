This docker compose file defines 3 containers connected through a bridge network.

Running `docker ps` should give you something like this

```
root@localhost:~# docker ps
CONTAINER ID   IMAGE                                                      COMMAND                  CREATED       STATUS                 PORTS                                                                                                                                                                                                                           NAMES                                                                                                                                                                                 tender_bhaskara
8d64c6d46335   graylog/graylog:4.0                                        "/usr/bin/tini -- wa…"   2 weeks ago   Up 4 hours (healthy)   0.0.0.0:1514->1514/tcp, :::1514->1514/tcp, 0.0.0.0:9000->9000/tcp, 0.0.0.0:1514->1514/udp, :::9000->9000/tcp, :::1514->1514/udp, 0.0.0.0:12201->12201/tcp, 0.0.0.0:12201->12201/udp, :::12201->12201/tcp, :::12201->12201/udp   docker-stuff_graylog_1
16004f2f9b26   mongo:4.2                                                  "docker-entrypoint.s…"   2 weeks ago   Up 2 weeks             27017/tcp                                                                                                                                                                                                                       docker-stuff_mongo_1
21126bd9147b   docker.elastic.co/elasticsearch/elasticsearch-oss:7.10.2   "/tini -- /usr/local…"   2 weeks ago   Up 2 weeks             9200/tcp, 9300/tcp                                                                                                                                                                                                              docker-stuff_elasticsearch_1
```
