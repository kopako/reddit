pipeline {
    agent any
    stages {
        stage('dockerfile exists') {
            steps {
                fileExists 'Dockerfile'
            }
        }
        stage('build jar') {
            steps {
                sh './gradlew bootJar'
            }
        }
        stage('build Docker') {
            steps {
                sh 'docker build -t kopako/reddit .'
            }
        }
    }
}

