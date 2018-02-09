pipeline {
  agent any
  stages {
    stage('DEPLOY') {
      steps {
        script {
          sshagent (credentials: ['65651b60-0c25-4e3f-9b8d-f72769b398e8']) {
            sh '  rsync -rlvv --del --exclude=.git --exclude=rsync.log --log-file=rsync.log ./ miguel_escobedo84@35.185.56.97:/var/www/example.com/public_html'
          }
        }
        
      }
    }
  }
}
