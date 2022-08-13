pipeline{
    agent any
    tools {
        maven 'MAVEN'
    }
    stages {
        stage('Build Maven') {
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'slkrt22@gmail.com', url: 'https://github.com/Rutu2211/DevOps-Assessment.git']]])                sh "mvn install"
                sh "mvn package"
                
            }
        }
    }
}
