pipeline {
    agent any
    enviorment {
        dockerImage=''
        registry='ppawlowski186/webservice'
        registryCredential='dockerhub_id'
    }

    stages {
        stage('GitCheckout'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/karmazynowyksiaze/CI-CD-App']]])
            }
        }
        stage('Build Docker Image') {
            steps {
                script{
                    dockerImage = docker.build registry
                }
            }
        }
        stage('Push Image to DockerHub ') {
            steps {
                script{
                    docker.withRegistry('', registryCredential){
                        dockerImage.push
                    }
                }
            }
        }
        stage('Stop docker container'){
            steps{
                script{
                    sh 'docker ps -f name=webserviceContainer -q | xargs --no-run-if-empty docker container stop'
                    sh 'docker container ls -a -fname=webserviceContainer -q | xargs -r docker container rm'
                }
            }
        }
    }
}
  