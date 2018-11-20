node('master'){	
    stage('clone'){
        git 'https://github.com/rahul619302/spring-boot-without-test.git'
    }
	
    stage('build'){
        sh 'mvn clean compile install package'
    }
	
    stage('Building image') {
		sh 'docker build . -t spring-boot-docker:1'
	}
}