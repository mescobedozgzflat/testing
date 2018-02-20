pipeline {
    agent none
    stages {
        stage('Back-end') {
            agent {
                docker { image 'antonienko/compass-watch' }
            }
            steps {
                sh 'compass compile /public'
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
    }
}
