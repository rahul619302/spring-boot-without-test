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
	
	stage('change permission') {
		sh "chmod 777 /var/run/docker.sock"
	}

    stage('Building image') {
		sh "docker build -t spring-boot-jenkins-app:${env.BUILD_ID} -f Dockerfile ."
	}
	
	stage('run image') {
		sh "docker run -dp 9066:9066 spring-boot-jenkins-app:${env.BUILD_ID}"
	}
	
	stage('docker login') {
		sh "docker login docker.io"
	}
	
	stage('docker push') {
		sh "docker push spring-boot-jenkins-app:${env.BUILD_ID}"
	}

}