node('master'){	

    stage('git clone'){
        git 'https://github.com/rahul619302/spring-boot-without-test.git'
    }
	
    stage('mvn build'){
        sh 'mvn clean compile install package'
    }
	
	stage('checkout') {
		checkout scm
	}
	
    stage('Dockerfile build') {
		sh "docker build -t rahul619302/first-docker-project:${env.BUILD_ID} ."
	}
	
	stage('run image') {
		sh "docker run -dp 9066:9066 rahul619302/first-docker-project:${env.BUILD_ID}"
	}

	stage('login') {
		sh "docker login -u rahul619302 -p ********"
	}
	
	stage('push image') {
		sh "docker push rahul619302/first-docker-project:${env.BUILD_ID}"
	}

}
