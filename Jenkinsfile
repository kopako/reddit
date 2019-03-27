pipeline {
  agent any
  stages {
    stage('ifUnix') {
      steps {
        isUnix()
      }
    }
    stage('dir') {
      steps {
        pwd()
      }
    }
    stage('dockerfile exists') {
      steps {
        fileExists 'Dockerfile'
      }
    }
    stage('build jar') {
      steps {
        sh './gralew bootJar'
      }
    }
    stage('build Docker') {
      steps {
        sh 'docker build -t kopako/reddit .'
      }
    }
  }
}
