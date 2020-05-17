pipeline {
  agent any
  environment {
    PATH = "/usr/local/bin:$PATH"
  }
  stages {
    stage('Shell test') {
      steps {
        sh 'echo "Hello Quentin"'
      }
    }
    stage('Lint') {
      steps {
        sh 'hadolint Dockerfile'
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
		sh './run_kubernetes.sh'
	  }
	}
  }
}
