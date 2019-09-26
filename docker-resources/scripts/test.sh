#!/bin/bash
#
# Run Drupal tests.
#
set -e

echo "AAA"
echo "$@"
echo "BBB"

cd /var/www/html && php core/scripts/run-tests.sh --dburl mysql://root:@mysql/drupal --sqlite /tmp/test.sqlite "$@"
