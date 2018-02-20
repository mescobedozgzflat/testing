pipeline {
    agent none
    stages {
        stage('Back-end') {
            agent {
                docker { 
                    image 'marmelab/compass' 
                }
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
