pipeline {
  agent any
  stages {
    stage('Delete project') {
      agent any
      steps {
        echo 'Delete Project'
        sh '''

oc delete project test'''
      }
    }

    stage('Create project') {
      agent any
      steps {
        echo 'Creating project'
        sh 'oc new-project test'
      }
    }

    stage('Deploy nginx') {
      steps {
        echo 'Deployng nginx'
        sh 'oc new-app --name nginx-test --image quay.io/redhattraining/hello-world-nginx:v1.0 -l app=nginx-test -n test'
      }
    }

    stage('Create route') {
      steps {
        echo 'Creating route'
        sh 'oc create route edge nginx-test --service nginx-test --hostname nginx-test.apps-crc.testing --port 8080 -n test'
      }
    }

    stage('Test') {
      steps {
        echo 'Testing'
        sh 'curl -sk https://nginx-test.apps-crc.testing'
      }
    }

  }
}