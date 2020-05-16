pipeline {
  agent any
  stages {
    stage('Shell test') {
      steps {
        sh 'echo "Hello Quentin"'
        sh '''
                     echo "Multiline shell steps works too"
                     ls -lah
                 '''
      }
    }
	stage('Build') {
		  steps {
			sh './run_docker.sh'
	  }
	}
  }
}
