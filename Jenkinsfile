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
            agent {
                docker { image 'tectoro/node-compass' }
            }
            steps {
                sh 'gem install bundler'
                sh 'gem install autoprefixer-rails'
                sh 'compass version'
                sh 'compass compile ./public'
            }
        }
    }
}
