pwd
sudo mkdir jenkins-data
sudo chown -R 1000 jenkins-data

docker run -u root -d \
    --restart=always \
    --name=jenkins \
    -p 38080:8080 \
    -p 50000:50000 \
    --env JENKINS_OPTS="--prefix=/core" \
    -v $(pwd)/jenkins-data:/var/jenkins_home \
    jenkinsci/blueocean:latest
