#!/bin/bash
oc create deployment telegraf-idrac
oc tag telegraf-idrac:$IDRACNAME telegraf-idrac:latest
oc create configmap telegraf-idrac-$IDRACNAME \
    --from-file=telegraf.conf 
