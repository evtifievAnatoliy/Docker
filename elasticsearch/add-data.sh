#curl -X GET "http://localhost:9200/myindex/_search"

#curl --silent 'http://127.0.0.1:9200/_cat/indices'

#curl -XPUT "http://localhost:9200/.monitoring-kibana-7-2022.04.10/" -H 'Content-Type: application/json' -d'
#{
#  "settings": {
#    "index": {
#      "number_of_shards": 1,
#      "number_of_replicas": 1
#    },
#    "analysis": {
#      "analyzer": {
#        "analyzer-text-field": {
#          "type": "custom",
#          "tokenizer": "keyword",
#          "filter": "lowercase"
#        }
#      }
#    }
#  },
#  "mappings": {
#    "properties": {
#      "text-field": {
#        "type": "text",
#        "analyzer": "analyzer-text-field"
#      }
#    }
#  }
#}
#'

#curl -X POST "http://localhost:9200/myindex/_doc/?pretty" -H 'Content-Type: application/json' -d'
#{ "text-field" : "text not array two" }
#'

#curl -X POST "http://localhost:9200/_bulk?pretty" -H 'Content-Type: application/json' -d'
#{ "index" : { "_index" : "myindex"} }
#{ "text-field" : "text one" }
#{ "index" : { "_index" : "myindex"} }
#{ "text-field" : "text two" }
#{ "index" : { "_index" : "myindex"} }
#{ "text-field" : "text three" }
#'


#curl -X POST "http://localhost:9200/educative/_delete_by_query" -H 'Content-Type: application/json' -d'
#{
#    "query": {
#        "match_all": {}
#    }
#}
#'

#curl -XDELETE localhost:9200/myindex

#curl -X DELETE localhost:9200/.monitoring-kibana-7-*,-.monitoring-kibana-7-2022.04.13