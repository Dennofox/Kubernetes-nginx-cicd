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
		sh 'echo $PATH'
		sh 'export PATH=$PATH:/usr/local/bin/'
		sh 'echo $PATH'
		sh 'which aws'
		sh './run_kubernetes.sh'
	  }
	}
  }
}
