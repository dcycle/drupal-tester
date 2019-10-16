Drupal tester
=====

[![CircleCI](https://circleci.com/gh/dcycle/drupal-tester.svg?style=svg)](https://circleci.com/gh/dcycle/drupal-tester)

Quickstart
-----

To run tests for, for example [Node Revisions Autoclean](https://www.drupal.org/project/node_revisions_autoclean):

    git clone https://github.com/dcycle/drupal-tester.git
    cd drupal-tester
    mkdir -p modules
    cd modules && git clone --branch 8.x-1.x https://git.drupalcode.org/project/node_revisions_autoclean.git
    ./scripts/test.sh "--verbose --suppress-deprecations node_revisions_autoclean"
