pipeline {
    agent none
    stages { 
        stage('Back-end') {
            agent {
                docker { image 'maven:3-alpine' 
                       args '-v $HOME/.m2:/root/.m2'}
            }
            steps {
                sh 'mvn --version'
            }
        }
        stage('Front-end') {
            agent {
                docker { image 'node:7-alpine' }
            }
            steps {
                sh 'node --version'
            }
        }
      
        stage('Node') {
              agent { dockerfile true }
            steps {
                sh 'gem list'
                sh 'compass version'
                sh 'compass compile ./public'
                archiveArtifacts artifacts: '**/public/test/*.css', fingerprint: true 
            }
        }
    }
}
