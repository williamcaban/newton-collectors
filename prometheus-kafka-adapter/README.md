# Prometheus Kafka Adapter OCP

Note: This is a configuration for lab experiments. This is using unauthenticated Kafka. DO NOT USE THIS IN PRODUCTION.



## Extra notes

To retrieve the certificates and password from Kafka (strimzi) deployment

```bash
KAFKA_CLUSTER_NAME=kafka-newton

kubectl get secret ${KAFKA_CLUSTER_NAME}-cluster-ca-cert -o jsonpath='{.data.ca\.p12}' | base64 -d > ca.p12
kubectl get secret ${KAFKA_CLUSTER_NAME}-cluster-ca-cert -o jsonpath='{.data.ca\.password}' | base64 -d > ca.password
```
