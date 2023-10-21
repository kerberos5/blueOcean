pipeline {
  agent any
  stages {
    stage('Create NS') {
      agent any
      steps {
        echo 'Creating namespace'
        sh '''


oc new-project test'''
      }
    }

    stage('Deploy nginx') {
      agent any
      steps {
        echo 'Deployng nginx'
        sh 'oc new-app --name nginx-test --image quay.io/redhattraining/hello-world-nginx:v1.0 -l app=nginx-test -n test'
      }
    }

    stage('Create route') {
      steps {
        echo 'Creating route for nginx'
        sh 'oc create route edge nginx-test --service nginx-test --hostname nginx-test.apps-crc.testing --port 8080 -n test'
      }
    }

  }
}