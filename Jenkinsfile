pipeline {
    agent any

    parameters {
        string(name: 'action', defaultValue: 'apply', description: 'Terraform action to execute (apply or destroy)')
    }

    environment {
        AWS_ACCESS_KEY_ID = credentials('aws_access_key_id')   
        AWS_SECRET_ACCESS_KEY = credentials('aws_secret_access_key') 
    }

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Jschenk64/Kass-vpc.git']]])
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Action') {
            steps {
                echo "Terraform action is --> ${params.action}"
                sh "terraform ${params.action} --auto-approve"
            }
        }
    }
}
