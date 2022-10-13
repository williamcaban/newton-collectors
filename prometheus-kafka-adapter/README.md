# Prometheus Kafka Adapter OCP

Note: This is a configuration for lab experiments. This is using unauthenticated Kafka. DO NOT USE THIS IN PRODUCTION.

To retrieve the certificates and password from Kafka (strimzi) deployment

```bash
KAFKA_CLUSTER_NAME=kafka-newton

kubectl get secret ${KAFKA_CLUSTER_NAME}-cluster-ca-cert -o jsonpath='{.data.ca\.p12}' | base64 -d > ca.p12
kubectl get secret ${KAFKA_CLUSTER_NAME}-cluster-ca-cert -o jsonpath='{.data.ca\.password}' | base64 -d > ca.password
```

## Notes

- [Configuring remote write storage](https://docs.openshift.com/container-platform/4.11/monitoring/configuring-the-monitoring-stack.html#configuring_remote_write_storage_configuring-the-monitoring-stack) for OpenShift monitoring stack

- When configuring core OpenShift Container Platform monitoring components:

    - Requires login with a user with the `cluster-admin` role
    - Create the `cluster-monitoring-config` ConfigMap object

- When configuring components that monitor user-defined projects:

    - Have access to the cluster as a user with the `cluster-admin` role or as a user with the `user-workload-monitoring-config-edit` role in the `openshift-user-workload-monitoring` project.
    - Create the `user-workload-monitoring-config` ConfigMap object

**Note:** To configure remote write for the Prometheus instance that monitors user-defined projects, make similar edits to the `user-workload-monitoring-config` config map in the `openshift-user-workload-monitoring` namespace. Note that the Prometheus config map component is called `prometheus` in the `user-workload-monitoring-config` ConfigMap object and not `prometheusK8s`, as it is in the `cluster-monitoring-config` ConfigMap object.

