node('master'){
    stage('clone'){
        git 'https://github.com/rahul619302/spring-boot-without-test.git'
    }
    stage('build'){
        sh 'mvn clean compile install package'
    }
    stage('deploy'){
        sh 'BUILD_ID=dontKillMe JENKINS_NODE_COOKIE=dontKillMe java -Dhudson.util.ProcessTree.disable=true -jar target/spring-boot-without-test.jar &'
    }
}