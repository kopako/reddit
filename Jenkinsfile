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
    stage('timestamp') {
      steps {
        timestamps()
      }
    }
    stage('wait Condition') {
      steps {
        waitUntil() {
          echo 'waiting'
        }

      }
    }
    stage('test') {
      steps {
        sh './gralew test'
      }
    }
  }
}