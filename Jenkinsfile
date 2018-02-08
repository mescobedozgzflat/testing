pipeline {
  agent any
  stages {
    stage('PEPE') {
      steps {
          script {
                sshagent (credentials: ['65651b60-0c25-4e3f-9b8d-f72769b398e8']) {
                  rsync -azvh /var/lib/jenkins/workspace root@35.185.56.97:/my_project/ofen
              
                }
           }
      }
    }
  }
}
