# Container image that runs your code
FROM packagrio/packagr:latest-golang

#TODO: this will eventually be replaced with a script, that gets the latest version of bumpr
COPY packagr-bumpr-linux-amd64 /srv/packagr/packagr-bumpr
# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
