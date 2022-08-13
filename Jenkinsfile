pipeline {
    agent any 
    tools {
        maven 'MAVEN'
    }
    stages {
        stage('Build Maven') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'fb30720d-5d25-441c-8ab4-2386186754cf', url: 'https://github.com/Rutu2211/DevOps-Assessment.git']]])
                sh "mvn -Dmaven.test.failure.ignore=true clean package"
                
            }
        }
    }
}
