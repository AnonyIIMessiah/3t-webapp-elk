#!/bin/bash
helm install elasticsearch elasticsearch
helm install kibana kibana
helm install logstash logstash
helm install filebeat filebeathelm install elasticsearch elasticsearch --set logging.level=DEBUG
helm install kibana kibana --set logging.level=DEBUG
helm install logstash logstash --set logging.level=DEBUG
helm install filebeat filebeat --set logging.level=DEBUG