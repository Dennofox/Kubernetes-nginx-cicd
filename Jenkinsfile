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
		sh 'export PATH=$PATH:$HOME/bin'
		sh 'export KUBECONFIG=$KUBECONFIG:~/.kube/config-capstone'
		sh 'export export PATH=$PATH:/usr/local/bin'
		sh 'export LD_LIBRARY_PATH=/lib:/usr/lib:/usr/local/lib:/usr/local/aws-cli/v2/2.0.13/dist/'
		sh './run_kubernetes.sh'
	  }
	}
  }
}
