pipeline {
  agent any
  stages {
    stage('PEPE') {
      steps {
          script {
                sshagent (credentials: ['65651b60-0c25-4e3f-9b8d-f72769b398e8']) {
                  sh ' rsync -chavzP --stats /var/lib/jenkins/workspace/ ubuntu@35.185.56.97:/home'
                }
           }
      }
    }
  }
}
