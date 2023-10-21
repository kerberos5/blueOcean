#!/bin/sh
oc new-app --name nginx-test --image quay.io/redhattraining/hello-world-nginx:v1.0 -l app=nginx-test -n test
