#!/bin/bash
#
# Run Drupal tests.
#
set -e

docker build -t local-dcycle-drupal-tester-image .
