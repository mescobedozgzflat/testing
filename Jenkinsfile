pipeline {
  agent any
  stages {
    stage('DEPLOY') {
      steps {
        script {
          sshagent (credentials: ['8eb44307-281e-4c06-98ad-0b7fc3cf1733']) {
            sh '  rsync -rlvv --del --exclude=.git --exclude=rsync.log --log-file=rsync.log ./ jenkins@35.196.169.27:/var/www/example.com/public_html'
          }
        }
        
      }
    }
  }
}
