node('master'){	
    stage('clone'){
        git 'https://github.com/rahul619302/spring-boot-without-test.git'
    }
	
    stage('build'){
        sh 'mvn clean compile install package'
    }
	
    stage('Building image') {
		checkout scm
		def customImage = docker.build("my-image:${env.BUILD_ID}")
		customImage.push()
		customImage.push('latest')
	}
}