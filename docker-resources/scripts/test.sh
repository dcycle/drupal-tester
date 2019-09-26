#!/bin/bash
#
# Run Drupal tests.
#
set -e

cd /var/www/html && php core/scripts/run-tests.sh --dburl mysql://root:@mysql/drupal --sqlite /tmp/test.sqlite "$@"
