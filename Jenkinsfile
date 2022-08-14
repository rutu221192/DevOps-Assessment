pipeline {
    agent any
    tools {
        maven 'MAVEN'
    }
    stages {
        stage('Build Maven') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: '9b9be042-01de-4e2b-881d-118a79fb4fb6', url: 'https://github.com/Rutu2211/DevOps-Assessment.git']]])
                sh "mvn -Dmaven.test.failure.ignore=true clean package"
	//	sh "mvn install"    
	//	sh "mvn clean package"
		 
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t slkrt2211/bookstore-example-1.0-SNAPSHOT .'
                }
            }
        }
    }
}






//pipeline{

//	agent any

//	environment {
//		DOCKERHUB_CREDENTIALS=credentials('DOCKER_HUB_LOGIN')
//	}

//	stages {

//		stage('Build') {

//			steps {
//				sh 'docker build -t slkrt2211/testrepo:latest .'
//			}
//		}
//
//		stage('Login') {
//
//			steps {
//				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
//			}
//		}

// 		stage('Push') {

// 			steps {
// 				sh 'docker push darshanrami/rdrep:latest'
// 			}
// 		}
//    }
// 		stage('File transfer into ansible server') {

// 			steps {
// 				sh 'scp /var/lib/jenkins/workspace/devassessment/* ubuntu@172.31.45.226:/home/ubuntu/project'
// 			}
// 		}
// 		stage('Login into ansible server and run playbook') {

// 			steps {
// 				sh """
// 				#!/bin/bash
// 				ssh ubuntu@172.31.45.226 << EOF
// 				cd project
// 				ansible-playbook ap.yml
// 				exit
// 				<< EOF
// 				"""
// 			}
// 		}
// 	}

// 	post {
// 		always {
// 			sh 'docker logout '
// 		}
// 	}

//}
