pipeline {
    agent {label "linux" }
    stages {
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
