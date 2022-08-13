pipeline{
    agent any
    tools {
        maven 'MAVEN'
    }
    stages {
        stage('Build Maven') {
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: '40d9836b-3d0c-4d36-b4e6-a9d95bca973c', url: 'https://github.com/Rutu2211/DevOps-Assessment.git']]])               
                sh "mvn install"
                sh "mvn package"
                
            }
        }
    }
}
