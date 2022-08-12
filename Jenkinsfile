pipeline{

	agent any
	tools {
		maven 'MAVEN'
	}

	environment {
		DOCKERHUB_CREDENTIALS=credentials('DOCKER_HUB_LOGIN')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t slkrt2211/testrepo:new .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push slkrt2211/test1repo:new'
			}
		}
		
		stage('File transfer into ansible server') {

			steps {
				sh 'scp /var/lib/jenkins/workspace/devassessment/* ubuntu@172.31.31.160:/home/ubuntu/project'
			}
		}
		stage('Login into ansible server and run playbook') {

			steps {
				sh """
				#!/bin/bash
				ssh ubuntu@172.31.31.160 << EOF
				cd project
				ansible-playbook ap.yml
				exit
				<< EOF
				"""
			}
		}
	}

// 	post {
// 		always {
// 			sh 'docker logout '
// 		}
// 	}

}
