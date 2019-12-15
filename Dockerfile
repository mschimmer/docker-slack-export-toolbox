FROM python:3.8-alpine
RUN \
    echo "Update base image ..." && \
    apk update && apk upgrade && \
    echo "Install php" && \
    apk add php7 php7-fpm php7-opcache && \
    echo "Install slack toolbox ..." && \
    pip install slacker && \
    pip install pick && \
    pip install slack-export-viewer  && \
    echo "Show slack toolbox ..." && \
    pip list && \
    pip show slacker && \
    pip show slack-export-viewer && \
    php -v && \
    echo "Get some scripts ..." && \
    mkdir /app && \
    cd /app && wget -O slack2html.php https://gist.githubusercontent.com/levelsio/122907e95956602e5c09/raw/6ea53ecfb936f4f0fbbcbb74bb7b6db5030ec64b/gistfile1.txt && \
    cd /app && wget https://raw.githubusercontent.com/zach-snell/slack-export/master/slack_export.py && \
    echo "Happy exporting"
WORKDIR /app
CMD ["sh"]