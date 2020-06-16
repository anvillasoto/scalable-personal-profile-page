pipeline {

  environment {
    registry = "anvillasoto/scalable-personal-profile-page"
    registryCredential = 'dockerhub'
  }
  
  agent any
  stages {
    stage('Lint') {
      steps {
        sh 'ls -l'
        sh 'make lint'
      }
    }

    stage('Security Scan') {
      steps {
        aquaMicroscanner(imageName: 'alpine:latest', notCompliesCmd: 'exit 1', onDisallowed: 'fail', outputFormat: 'html')
      }
    }
    
    stage('Build Docker Image') {
      steps {
        sh 'Build Docker Image and upload to Dockerhub"'
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    
    stage('Deploy Docker Image') {
      steps{
         script {
            docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Remove Unused Docker Image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
    
    stage(‘Docker Purge’) {
      steps {
        sh ‘docker image prune -fa’
        deleteDir()
      }
    }

  }
}
