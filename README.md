
# 3T WebApp ELK Deployment

## Overview

This repository contains the deployment configuration for the 3T Web Application integrated with the ELK (Elasticsearch, Logstash, Kibana) stack. The deployment is orchestrated using Helm charts, facilitating scalable and manageable deployments in Kubernetes environments.

## Repository Structure

The repository is organized into the following directories and files:

- **elk-1/**: Contains Helm chart configurations for deploying the ELK stack components.

- **elk-2-filebeat/**: Includes Helm chart configurations for deploying Filebeat, which is used for forwarding and centralizing log data.

- **README.md**: Provides an overview and documentation for the repository.

## Deployment Details

### ELK Stack (`elk-1/`)

The `elk-1` directory contains the necessary Helm charts to deploy the ELK stack:

- **Elasticsearch**: A distributed, RESTful search and analytics engine capable of addressing a growing number of use cases.

- **Logstash**: A server-side data processing pipeline that ingests data from multiple sources simultaneously, transforms it, and then sends it to a "stash" like Elasticsearch.

- **Kibana**: Provides visualization capabilities on top of the content indexed on an Elasticsearch cluster.

These components are configured to work seamlessly to collect, process, and visualize log data from various sources.

### Filebeat (`elk-2-filebeat/`)

The `elk-2-filebeat` directory contains Helm chart configurations for deploying Filebeat:

- **Filebeat**: A lightweight shipper for forwarding and centralizing log data. Installed as an agent on your servers, Filebeat monitors the log files or locations that you specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing.

Filebeat is configured to collect logs from the 3T Web Application and forward them to Logstash for processing.

## Prerequisites

Before deploying the ELK stack and Filebeat, ensure the following:

- A running Kubernetes cluster.
- Helm is installed and configured to interact with your Kubernetes cluster.

## Deployment Instructions

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/AnonyIIMessiah/3t-webapp-elk.git
   cd 3t-webapp-elk
   ```

2. **Deploy ELK Stack**:

   Navigate to the `elk-1` directory and deploy the ELK stack using Helm:

   ```bash
   cd elk-1
   helm install elk-stack .
   ```

3. **Deploy Filebeat**:

   Navigate to the `elk-2-filebeat` directory and deploy Filebeat using Helm:

   ```bash
   cd ../elk-2-filebeat
   helm install filebeat .
   ```

Ensure that the configurations in the Helm charts are tailored to your specific environment and requirements.

## Configuration

- **Elasticsearch Configuration**: Customize the Elasticsearch Helm chart values to set parameters like cluster name, node count, resource limits, and storage options.
- **Logstash Configuration**: Configure input sources, filters, and output destinations in the Logstash Helm chart values.
- **Kibana Configuration**: Set up access controls, default index patterns, and visualizations in the Kibana Helm chart values.
- **Filebeat Configuration**: Define the paths to log files, specify modules, and set output destinations in the Filebeat Helm chart values.

## Monitoring and Access

- **Kibana Dashboard**: Access the Kibana dashboard to visualize and analyze log data. The URL and access credentials can be configured in the Kibana Helm chart values.
- **Elasticsearch APIs**: Use Elasticsearch RESTful APIs to interact with the indexed data.

## Contribution

Contributions to enhance the deployment configurations, add features, or fix issues are welcome. Please fork the repository, make your changes, and submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
