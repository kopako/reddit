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
    stage('test') {
      steps {
        sh './gralew test'
      }
    }
  }
}
