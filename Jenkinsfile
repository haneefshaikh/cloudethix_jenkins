pipeline {
    agent any
    parameters {
    string(name: 'NAME', defaultValue: 'Asif', description: 'input tag for ansible command.')
    string(name: 'LAST_NAME', defaultValue: 'Shaikh', description: 'input tag for ansible command.')
    string(name: 'SHOW', defaultValue: 'true', description: 'input tag for ansible command.')
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                //sh "./test/test.sh ${params.NAME} ${params.LAST_NAME} ${params.SHOW}"
            }
        
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh "./first_project.sh.sh ${params.NAME} ${params.LAST_NAME} ${params.SHOW}"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}