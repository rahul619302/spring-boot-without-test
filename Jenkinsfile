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
		checkout scm
		docker.build("my-image:${env.BUILD_ID}")
	}
	stage('run container') {
		sh 'docker run -it my-image:${env.BUILD_ID}'
	}
}