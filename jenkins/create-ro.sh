#!/bin/sh
oc create route edge nginx-test --service nginx-test --hostname nginx-test.apps-crc.testing --port 8080 -n test
