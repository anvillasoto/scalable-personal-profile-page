pipeline {
<<<<<<< HEAD
     agent any
     stages {
         stage('Build') {
             steps {
                 sh 'echo "Hello World"'
                 sh '''
                     echo "Multiline shell steps works too"
                     ls -lah
                 '''
             }
         }
         stage('Lint') {
              steps {
                  sh 'ls -l'
                  sh 'make lint'
              }
         }
         stage('Security Scan') {
              steps {
                 aquaMicroscanner imageName: 'alpine:latest', notCompliesCmd: 'exit 1', onDisallowed: 'fail', outputFormat: 'html'
              }
         }
     }
}
=======
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'echo "Hello World"'
        sh '''
                     echo "Multiline shell steps works too"
                     ls -lah
                 '''
      }
    }

    stage('Lint') {
      steps {
        sh 'make lint'
      }
    }

    stage('Security Scan') {
      steps {
        aquaMicroscanner(imageName: 'alpine:latest', notCompliesCmd: 'exit 1', onDisallowed: 'fail', outputFormat: 'html')
      }
    }

  }
}
>>>>>>> 64bb8e090a06121c8a7e2b927f24402548c2eb40
