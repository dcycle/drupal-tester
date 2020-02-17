FROM dcycle/drupal:8drush

# See https://www.drupal.org/docs/8/phpunit/running-phpunit-tests

RUN cd /var/www/html/vendor/drupal/coder && git reset --hard
RUN export COMPOSER_MEMORY_LIMIT=-1 && composer update
RUN mkdir -p sites/default/simpletest
RUN chmod 777 sites/default/simpletest
ADD docker-resources/phpunit.xml core/phpunit.xml
RUN cd /usr/local/bin; ln -s /var/www/html/vendor/bin/phpunit
ADD docker-resources/scripts /scripts
RUN chsh -s /bin/bash www-data
