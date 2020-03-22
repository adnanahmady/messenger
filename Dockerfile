FROM adnanahmady/php:1.0.6

USER root
RUN echo 'xdebug.remote_host=172.17.0.1' >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN echo 'xdebug.remote_handler=dbgp' >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN echo 'xdebug.remote_enable=on' >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN echo 'xdebug.remote_connect_back=0' >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN echo 'xdebug.idekey=debug.backend.app' >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN echo 'default_socket_timeout=99999999' >> /usr/local/etc/php/conf.d/docker-php-ext-socket.ini
RUN echo 'max_execution_time=99999999' >> /usr/local/etc/php/conf.d/docker-php-ext-custom.ini
USER docker