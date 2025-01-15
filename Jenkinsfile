pipeline {
    agent any
    environment {
               Sample_creds = credentials('deploy_cred')
    }
    stages
    { 
        stage('Deploy') {
    steps {
               
        sh 'curl -L -u "admin:cmVmdGtuOjAxOjE3Njg0MDY4Mjc6SUVSYkNqWjRnYWZJc1JUZjBnbEliWTFmbVBv" -O "http://43.205.237.112:8082/artifactory/hello-world-war-libs-release/com/efsavage/hello-world-war/1.0.24/hello-world-war-1.0.24.war"'
        sh 'scp /opt/jenkins/workspace/deploy/target/hello-world-war-1.0.24.war /home/ubuntu/apache-tomcat-10.1.34/webapps'
        sh 'cd bin/'
        sh './shutdown'
        sh './startup'
        
       }
    }
  }
}
