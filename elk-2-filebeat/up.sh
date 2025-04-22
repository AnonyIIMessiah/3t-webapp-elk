#!/bin/bash
helm install my-elasticsearch elasticsearch --version 8.5.1
helm upgrade --install elk-kibana elastic/kibana -f kibana.yaml 
helm install my-filebeat elastic/filebeat --version 8.5.1
helm install my-logstash elastic/logstash --version 8.5.1
helm install my-logstash logstash --version 8.5.1