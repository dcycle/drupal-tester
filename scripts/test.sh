#!/bin/bash
#
# Run Drupal tests.
#
set -e

# echo ' => get the latest version of the dcycle/drupal:8drush9'
# docker pull dcycle/drupal:8drush9

# docker build -t dcycle/drupal-tester .
#
# docker-compose up -d --build

echo ' => Run tests'
docker-compose exec drupal /bin/bash -c "chsh -s /bin/bash www-data && su - www-data -- /scripts/test.sh $1"

# docker-compose down
