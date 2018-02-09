pipeline {
  agent any
  stages {
    stage('DEPLOY') {
      steps {
        script {
          sshagent (credentials: ['3cb8fa40-f1d1-4e8d-890c-32283b8f9279']) {
            sh '  rsync -rlvv --del --exclude=.git --exclude=rsync.log --log-file=rsync.log ./ jenkins@35.196.169.27:/var/www/example.com/public_html'
          }
        }
        
      }
    }
  }
}
