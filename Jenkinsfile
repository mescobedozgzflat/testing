pipeline {
  agent any
  stages {
    stage('PREUBA') {
      parallel {
        stage('PREUBA') {
          steps {
            echo 'Hola'
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