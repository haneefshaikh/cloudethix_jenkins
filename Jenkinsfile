pipeline {
    agent any
    parameters {
    choice(name: 'NAME', choices: ['One','Two','Three'], description: 'input for NAME.')
    choice(name: 'LAST_NAME', choices: ['Hello','Moto','Fellow'], description: 'input for LAST_NAME.')
    choice(name: 'SHOW', choices: ['true','false'], description: 'input TRUE and FALSE')
    }

    stages {
        stage('Build') {
            steps {
                echo "Building Stage Executing shell script first_project.sh"
                sh "chmod +x -R first_project.sh"
                sh "bash first_project.sh ${params.NAME} ${params.LAST_NAME} ${params.SHOW}"
            }
        
        }
        stage('Test') {
            steps {
                echo 'Running Test Script for QA Team'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying on KBS cluster'
            }
        }
    }
    post{
        always{
            echo "Deleting Workspace"
            deleteDir() /* cleaup workspace */
        }
    }
}