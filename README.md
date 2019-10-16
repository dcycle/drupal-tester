Drupal tester
=====

[![CircleCI](https://circleci.com/gh/dcycle/drupal-tester.svg?style=svg)](https://circleci.com/gh/dcycle/drupal-tester)

Quickstart
-----

To run unit tests, for example, for [Unit Test Tutorial](https://www.drupal.org/project/unit_test_tutorial):

    git clone https://github.com/dcycle/drupal-tester.git
    cd drupal-tester/
    mkdir -p modules
    cd modules
    git clone --branch 8.x-1.x https://git.drupalcode.org/project/unit_test_tutorial.git
    cd ..
    ./scripts/test.sh "--verbose --suppress-deprecations unit_test_tutorial"
    docker-compose down -v
