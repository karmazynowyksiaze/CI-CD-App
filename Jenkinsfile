pipeline {
    agent any
    options{
        bulidDiscarder(logRotator(numToKeepStr: '5', daysToKeepStr: '5'))
        timestamps()
    }
    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ppawlowski186/webservice .'
            }
        }
    }
    stages {
        stage('Push Image to DockerHub ') {
            steps {
                withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
                    sh 'docker login -u ppawlowski186 -p ${dockerhubpwd}'
                    sh 'docker push ppawlowski186/webservice'
                }
            }
        }
    }
}
