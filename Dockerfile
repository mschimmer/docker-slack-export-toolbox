FROM python:3.8-alpine
RUN \
    echo "Update base image ..." && \
    apk update && apk upgrade && \
    echo "Install php" && \
    apk add php7 php7-fpm php7-opcache && \
    echo "Install slack toolbox ..." && \
    pip install slacker && \
    pip install pick && \
    pip install slack-export-viewer && \
    pip install wayslack && \
    echo "Show slack toolbox ..." && \
    pip list && \
    pip show slacker && \
    pip show slack-export-viewer && \
    php -v && \
    echo "Happy exporting!"
COPY app /app
WORKDIR /app
CMD ["sh"]