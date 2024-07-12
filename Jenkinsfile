pipeline {
    agent {
        docker { image 'node:20.15.1-alpine3.20' }
    }
    stages {
        stage('Checkout') {
            steps {
                // Checkout the repository
                git url: 'https://github.com/mourath/trabalho5.2.git', branch: 'main'
            }
        }
        
        stage('Build') {
            steps {
                script {
                    // Pull the latest version of the Docker image
                    docker.image('openjdk:11').inside {
                        // Compile the Java program
                        sh 'javac OlaUnicamp.java'
                    }
                }
            }
        }
        
        stage('Run') {
            steps {
                script {
                    // Run the Java program in the Docker container
                    docker.image('openjdk:11').inside {
                        sh 'java OlaUnicamp'
                    }
                }
            }
        }
    }
}
