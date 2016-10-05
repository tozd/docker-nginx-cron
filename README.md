Image extending [tozd/nginx-mailer](https://github.com/tozd/docker-nginx-mailer) image to add support for cron jobs.

You should set `MAILTO` environment variable to an e-mail address to which output from cron jobs should be send.

When `cron` daemon runs, it stores its environment into `/dev/shm/cron-environment` file.
You cron scripts can then source this file (`. /dev/shm/cron-environment`) to gain access
to environment variables provided to Docker container. Only root processes can access this file.