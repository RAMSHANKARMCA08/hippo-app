pipeline {
    agent any 
    
    stages {
        stage('Git') {
            steps { git 'https://github.com/RAMSHANKARMCA08/hippo-app.git' }
        }
	stage('Build') {
	            steps { sh label: '', script: 'mvn clean'
		            sh label: '', script: 'mvn install'}
		            }

     
    }
}
