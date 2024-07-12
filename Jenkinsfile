pipeline {
    agent {label "linux" }
    stages {
        stage('Checkout') {
            steps {
                // Checkout the repository
                git url: 'https://github.com/mourath/trabalho5.2.git', branch: 'main'
            }
        }
        stage('Build') {
            steps {
                sh"""
                docker build -t ola-unicamp-java .
                """
            }
        }
        
        stage('Run') {
            steps {
                sh"""
                docker run ola-unicamp-java
                """
            }
            }
        }
    
}
