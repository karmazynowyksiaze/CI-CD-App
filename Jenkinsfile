pipeline {
    agent any
    stages {
        stage('GitCheckout'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/karmazynowyksiaze/CI-CD-App']]])
            }
        }
        stage('GitClone'){
            steps{
                git([url: 'https://github.com/karmazynowyksiaze/CI-CD-App.git', branch: 'main', credentialsId: 'karmazynowyksiaze'])
            }
        }
        stage('Build Docker Image') {
            steps {
                script{
                    sh 'docker build -t ppawlowski186/webservice .'
                }
            }
        }
        stage('Push Image to DockerHub ') {
            steps {
                script{
                    withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
                        sh 'docker login -u ppawlowski186 -p ${dockerhubpwd}'
                    }
                    sh 'docker push ppawlowski186/webservice'
                }
            }
        }
    }
}
  