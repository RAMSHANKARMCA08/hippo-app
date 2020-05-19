pipeline {
    agent any 
    
    stages {
        stage('Git') {
            steps { git 'https://github.com/RAMSHANKARMCA08/hippo-app.git' }
        }
	stage('Build') {
	            steps { sh label: '', script: '/usr/local/src/apache-maven/bin/mvn clean'
		            sh label: '', script: '/usr/local/src/apache-maven/bin/mvn install'}
		            }
     
	    
	    stage('Build Docker Image') {
            steps {
                script {
                    app = docker.build("a2zram/hippo2")
                    app.inside {
                        sh 'echo $(curl localhost:7070)'
                    }
                }
            }
        }   
     
    }//stges ends
}
