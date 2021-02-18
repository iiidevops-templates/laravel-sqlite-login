FROM docker.io/bitnami/laravel:7-debian-10
COPY --chown=bitnami:bitnami app /app
RUN mv .env.example .env && \
    composer install && \
    php artisan key:generate
CMD php artisan serve --port=3000 --host=0.0.0.0
