pipeline {
    agent any
    environment {
               Sample_creds = credentials('deploy_cred')
    }
    stages
    { 
        stage('Deploy') {
    steps {
        sh """
        sudo su
        cd apache-tomcat-10.1.34/webapps     
        curl -L -u "admin:cmVmdGtuOjAxOjE3Njg0MDY4Mjc6SUVSYkNqWjRnYWZJc1JUZjBnbEliWTFmbVBv" -O "http://43.205.237.112:8082/artifactory/hello-world-war-libs-release/com/efsavage/hello-world-war/1.0.24/hello-world-war-1.0.24.war"
        cd /apache-tomcat-10.1.34/bin
        ./shutdown.sh
        sleep 3
        cd /aoache-tomcat-10.1.34/bin
        ./startup.sh
        """
       }
    }
  }
}
