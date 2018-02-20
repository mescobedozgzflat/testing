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
                 sh 'cat ./public/css/test.css'
                sh "mkdir -p output"
                sh "cp ./public/css/test.css output"
                  writeFile file: "output/test.css", text: "This file is useful, need to archive it."
            }
        }
        stage('Build') {
            agent any
            steps {
                sh 'ls'
                sh 'cd ./'
                sh 'ls'
            }
        }
    }
}
