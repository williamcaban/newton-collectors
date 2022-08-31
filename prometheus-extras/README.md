# Prometheus Extras

By default OpenShift node-exporter is configured to explicitly disable the `cpufreq` collector. When these metrics are required we need to use a custom node-exporter instance. This directory is a custom deployment of node-exporter to enable the `cpufreq` collector on OpenShift.

NOTE1: The cluster must have the [monitoring for user-defined projects](https://docs.openshift.com/container-platform/4.11/monitoring/enabling-monitoring-for-user-defined-projects.html) enabled for this to work

NOTE2: For simplification, the example in this directory uses unauthenticated http schema for the metrics. 
