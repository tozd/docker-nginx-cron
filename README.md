Image extending [tozd/nginx-mailer](https://github.com/tozd/docker-nginx-mailer) image to add support for cron jobs.

You should set `MAILTO` environment variable to an e-mail address to which output from cron jobs should be send.
For e-mailing out of the container the image uses [nullmailer](http://untroubled.org/nullmailer/).
For it to work, you should set `ADMINADDR` environment variable to an e-mail address to which errors and failures should
go, and `REMOTES` to the e-mail relay server this image should be using to send e-mails.

When `cron` daemon runs, it stores its environment into `/dev/shm/cron-environment` file.
You cron scripts can then source this file (`. /dev/shm/cron-environment`) to gain access
to environment variables provided to Docker container. Only root processes can access this file.
