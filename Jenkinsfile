pipeline {
    agent any
       stages 
        stage('Deploy WAR') {
    steps {
      sh '  curl -L -u "admin:cmVmdGtuOjAxOjE3Njg0MDY4Mjc6SUVSYkNqWjRnYWZJc1JUZjBnbEliWTFmbVBv" -O "http://13.127.213.226:8082/artifactory/hello-world-war-libs-release/com/efsavage/hello-world-war/1.0.24/hello-world-war-1.0.24.war"'
        sh '''
        scp -o StrictHostKeyChecking=no /opt/jenkins/workspace/pipelinejob_3/target/hello-world-war-1.0.0.war root@172.31.45.190:/opt/apache-tomcat-10.1.34/webapps/
        '''
    }
}
  
    }
}
