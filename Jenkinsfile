pipeline {
    agent any
    environment {
       Sample_creds = credentials('deploy_cred')
    }
       stages 
    {
        stage('checkout') {             
            steps {
                sh """
                #!/bin/bash
                sleep 3
                sudo su 
                cd opt/apache-tomcat-10.1.34/webapps
                ls
                curl -L -u "deploy_cred_crd_USR:deploy_cred_PWD" -O "http://43.205.237.112:8082/artifactory/hello-world-war-libs-release/com/efsavage/hello-world-war/1.0.24/hello-world-war-1.0.24.war"
                pwd
                cd opt/apache-tomcat-10.1.34/bin
                ./shutdown.sh
                sleep 3
                pwd
                
                pwd
                cd opt/apache-tomcat-10.1.34/bin
                ./startup.sh
                sleep 3
                """ 

            }
        }
         
    }
}
