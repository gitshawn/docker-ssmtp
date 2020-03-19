# docker-ssmtp
ssmtp in an Alpine Docker container

Intention for this container is to run in a modern CI pipeline (Concourse, Drone.io, etc), so all config is done via environment variables.

Here's an example: (All env variables must be present for container to work)

    docker run --rm \
    -e config=' 
    root=postmaster
    mailhub=smtp.gmail.com:587 
    UseSTARTTLS=YES
    FromLineOverride=YES
    AuthUser=from@gmail.com 
    AuthPass=password ' \
    -e to=rec@email.com \
    -e subject='email subject' \
    -e from='Me <from@gmail.com>' \
    -e body='this is a test' \
    sfriedel/ssmtp \
    ./start.sh 
