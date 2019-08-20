FROM tozd/nginx-mailer:ubuntu-xenial

ENV MAILTO=

RUN apt-get update -q -q && \
 apt-get install cron --yes --force-yes && \
 apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ~/.cache ~/.npm

COPY ./etc /etc
