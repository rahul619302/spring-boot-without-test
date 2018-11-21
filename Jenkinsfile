node('master'){	

    stage('clone'){
        git 'https://github.com/rahul619302/spring-boot-without-test.git'
    }
	
    stage('build'){
        sh 'mvn clean compile install package'
    }
	
	stage('checkout') {
		checkout scm
	}
	
    stage('build Dockerfile') {
		sh "docker build -t spring-boot-jenkins-app:${env.BUILD_ID} ."
	}
	
	stage('run image') {
		sh "docker run -dp 9066:9066 spring-boot-jenkins-app:${env.BUILD_ID}"
	}

	stage('docker push') {
		sh "docker push spring-boot-jenkins-app:${env.BUILD_ID}"
	}

}