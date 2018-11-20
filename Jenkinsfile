node('master'){

	environment {
		registry = "rahul619302/first-docker-project"
	}
	
    stage('clone'){
        git 'https://github.com/rahul619302/spring-boot-without-test.git'
    }
	
    stage('build'){
        sh 'mvn clean compile install package'
    }
	
    stage('Building image') {
		steps{
			script {
				def dockerImage =  docker.build registry + ":$BUILD_NUMBER"
				dockerImage.push()
			}
		}
	}
}