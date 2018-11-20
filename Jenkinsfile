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

    stage('Building image') {
		sh "docker build -t spring-boot-jenkins-app:${env.BUILD_ID} -f Dockerfile ."
	}
	
	stage('run image') {
		sh "docker run -d spring-boot-jenkins-app:${env.BUILD_ID}"
	}

}