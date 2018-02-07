pipeline {
  agent none
  stages {
    stage('Build') {
      steps {
        echo 'Building'
      }
    }
    stage('Test') {
      steps {
        echo 'Testing'
        input 'Eres un culebras '
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