pipeline {
  agent any
  stages {
    stage('getPod') {
      agent any
      steps {
        echo 'get pods'
        input(message: 'Get Deploy?', ok: 'Yes')
        sh 'oc get pod -n smoke -o jsonpath=\'{.items[].spec.containers[].name}\''
      }
    }

    stage('getSVC') {
      agent any
      steps {
        echo 'get svc'
        sh 'oc get svc -n smoke'
      }
    }

  }
}