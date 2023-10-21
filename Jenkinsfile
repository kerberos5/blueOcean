pipeline {
  agent any
  stages {
    stage('Create NS') {
      agent any
      steps {
        echo 'Creating namespace'
        sh 'jenkins/create-ns.sh'
      }
    }

    stage('Deploy nginx') {
      agent any
      steps {
        echo 'Deployng nginx'
        sh 'jenkins/deploy-ng.sh'
      }
    }

    stage('Create route') {
      steps {
        echo 'Creating route for nginx'
        sh 'jenkins/create-ro.sh'
      }
    }

  }
}