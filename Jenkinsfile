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
		    sh 'echo $(whoami)'
		    sh 'usermod -aG docker $(whoami)'
		    sh 'chown $(whoami) /var/run/docker.sock'
                    app = docker.build("a2zram/balajidemo")
                    app.inside {
                        sh 'echo $(curl localhost:7070)'
                    }
                }
            }
        }   
     
    }//stges ends
}
