#!/bin/bash
# helm install elasticsearch elasticsearch
# helm install kibana kibana
# helm install logstash logstash
# helm install filebeat filebeat
kubectl create namespace logging
kubectl patch storageclass standard -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'
helm install elasticsearch elasticsearch --set logging.level=DEBUG  -n logging
sleep 150
helm install kibana kibana --set logging.level=DEBUG -n logging
sleep 30
helm install logstash logstash --set logging.level=DEBUG -n logging
sleep 30
helm install filebeat filebeat --set logging.level=DEBUG -n logging