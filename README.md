# tozd/nginx-cron

<https://gitlab.com/tozd/docker/nginx-cron>

Available as:

- [`tozd/nginx-cron`](https://hub.docker.com/r/tozd/nginx-cron)
- [`registry.gitlab.com/tozd/docker/nginx-cron`](https://gitlab.com/tozd/docker/nginx-cron/container_registry)

## Image inheritance

[`tozd/base`](https://gitlab.com/tozd/docker/base) ← [`tozd/dinit`](https://gitlab.com/tozd/docker/dinit) ← [`tozd/nginx`](https://gitlab.com/tozd/docker/nginx) ← [`tozd/nginx-mailer`](https://gitlab.com/tozd/docker/nginx-mailer) ← `tozd/nginx-cron`

See also [`tozd/cron`](https://gitlab.com/tozd/docker/cron).

## Tags

- `ubuntu-trusty`: cron 3.0pl1
- `ubuntu-xenial`: cron 3.0pl1
- `ubuntu-bionic`: cron 3.0pl1
- `ubuntu-focal`: cron 3.0pl1
- `ubuntu-jammy`: cron 3.0pl1
- `ubuntu-noble`: cron 3.0pl1

## Variables

- `MAILTO`: An e-mail address to which output from cron jobs is send.

## Description

Image extending [tozd/nginx-mailer](https://gitlab.com/tozd/docker/nginx-mailer) image to add support for cron jobs.

A suggested way to use this image is to extend it, add a program you want
to use in a cron job, and add a crontab file to `/etc/cron.d` directory
(or other cron crontab directories, like `/etc/cron.daily`).

You should set `MAILTO` environment variable to an e-mail address to which output from cron jobs should be send.
For e-mailing out of the container the image uses [nullmailer](http://untroubled.org/nullmailer/).
For it to work, you should set `ADMINADDR` environment variable to an e-mail address to which errors and failures should
go, and `REMOTES` to the e-mail relay server this image should be using to send e-mails.

When `cron` daemon runs, it stores its environment into `/dev/shm/cron-environment` file.
You cron scripts can then source this file (`. /dev/shm/cron-environment`) to gain access
to environment variables provided to Docker container. Only root processes can access this file.

## GitHub mirror

There is also a [read-only GitHub mirror available](https://github.com/tozd/docker-nginx-cron),
if you need to fork the project there.
