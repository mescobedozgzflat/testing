pipeline {
  agent any
  stages {
    stage('PREUBA') {
      parallel {
        stage('PREUBA') {
          steps {
            checkout scm
          }
        }
        stage('Prueba 1') {
          steps {
            echo 'Hola2'
          }
        }
      }
    }
  }
}
