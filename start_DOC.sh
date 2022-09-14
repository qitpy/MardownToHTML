docker container stop devops-handbook-runner
docker rm devops-handbook-runner
docker build -t devops-handbook .
docker run -d --name devops-handbook-runner -p 21099:21099 devops-handbook
