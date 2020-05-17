pipeline {
  agent any
  stages {
    stage('Shell test') {
      steps {
        sh 'echo "Hello Quentin"'
      }
    }
    stage('Build Docker image') {
	  steps {
		sh './run_docker.sh'
	  }
	}
    stage('Upload Docker image') {
	  steps {
		sh './upload_docker.sh'
	  }
	}
    stage('Update Kubernetes cluster with new image') {
	  steps {
		sh 'which kubectl'
		sh './run_kubernetes.sh'
	  }
	}
  }
}
