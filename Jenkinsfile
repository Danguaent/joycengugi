node {

stage('Clone Repository')
{
checkout scm
}

stage('Show me the files'){
sh "ls -l"
}

stage('Build docker image'){

sh "docker build -t docker_test:latest ."
}

stage('Docker login to hub and push the image'){
sh "docker login -u 'jgit' -p 'Devops123' "
sh "docker tag docker_test:latest jgit/docker_test:latest"
sh "docker push jgit/docker_test:latest"
}

stage('Run Container')

{
sh "docker container run --detach --publish 5861:5861 --name devops jgit/docker_test:latest"
}
}
