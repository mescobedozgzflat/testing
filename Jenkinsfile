pipeline {
    agent  dockerfile true
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
            steps {
                sh 'gem list'
                sh 'compass version'
                sh 'compass compile ./public'
                 sh "mkdir -p output"
                 writeFile file: "output/usefulfile.txt", text: "This file is useful, need to archive it."
            }
        }
        stage('Preuba') {
            steps{
        	 archiveArtifacts artifacts: 'output/*.txt', excludes: 'output/*.md'
            }
        
        }
        
    }
}
