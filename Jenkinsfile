pipeline {
  agent any
  stages {
    stage('getPod') {
      steps {
        echo 'get pods'
        sh 'oc get pod -n smoke'
      }
    }

    stage('getSVC') {
      steps {
        echo 'get svc'
        sh 'oc get svc -n smoke'
      }
    }

  }
}