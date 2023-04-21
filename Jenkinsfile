pipeline {
     
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
    
        stage ("terraform init") {
            steps {
                sh ("terraform init -reconfigure") 
            }
        }
        
        stage ("terraform plan") {
            steps {
                sh ('terraform plan') 
            }
        }

        stage ("terraform action") {
            steps {
                 echo "Terraform action is --> ${action}"
                 sh ('terraform ${action} --auto-approve')
           }
        }
    }
}
