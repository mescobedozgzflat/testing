pipeline {
  agent any
  stages {
    stage('PREUBA') {
      script {
  
                sshagent (jenkins) {
                sh 'ssh -o StrictHostKeyChecking=no -l 35.185.56.97 uname -a'
                }
           }
    }
  }
}
