pipeline {
  agent {
    docker {
      image 'node:7-alpine'
    }
    
  }
  stages {
    stage('Build') {
      steps {
        echo 'Building'
      }
    }
    stage('Test') {
      steps {
        echo 'Testing'
        input 'Eres un culebras 2'
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying'
        sh 'sh \'node --version\''
      }
    }
  }
}