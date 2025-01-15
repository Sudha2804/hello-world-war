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
                sleep 5
                sudo su
                cd /apache-tomcat-10.1.34/webapps
                ls
                curl -L -u "Demo_test_crd_USR:Demo_test_crd_PWD" -O "http://13.203.76.219:8082/artifactory/hello_world_war-libs-release/com/efsavage/hello-world-war/1.0.14/hello-world-war-1.0.14.war"
                pwd
                cd /apache-tomcat-10.1.34/bin
                ./shutdown.sh
                sleep 3
                pwd
                
                pwd
                cd /apache-tomcat-10.1.34/bin
                ./startup.sh
                sleep 3
                """ 

            }
        }
         
    }
}
