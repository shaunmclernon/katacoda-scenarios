The easiest way to get started with Jenkins Evergreen is to use the Docker image which is auto-configured to run Docker Pipelines. When `jenkins/evergreen:docker-cloud` is launched, it will automatically download the latest version of Jenkins and the most essential plugins and automatically configure basic authentication, Docker settings, and Jenkins Pipeline.

In the example below, Jenkins Evergreen will be made available on port 8080 and persist its data in `$PWD/jenkins-home`, allowing the container to be restarted if necessary.

# Starting Jenkins Evergreen

`docker volume create jenkins-evergreen-data && \
docker pull jenkins/evergreen:docker-cloud && \
docker run --name evergreen \
    --restart=always \
    -ti \
    -p 8080:80 \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v jenkins-evergreen-data:/evergreen/data \
    -e LOG_LEVEL=info \
    jenkins/evergreen:docker-cloud`{{execute}}