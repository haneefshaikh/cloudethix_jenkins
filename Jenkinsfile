pipeline {
    agent any
    parameters {
    string(name: 'NAME', defaultValue: 'HANEEF', description: 'input tag for ansible command.')
    string(name: 'LAST_NAME', defaultValue: 'SHAIKH', description: 'input tag for ansible command.')
    string(name: 'SHOW', defaultValue: 'true', description: 'input tag for ansible command.')
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh "chmod +x -R /test/test.sh"
                sh "./test/test.sh ${params.NAME} ${params.LAST_NAME} ${params.SHOW}"
            }
        
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh "chmod +x -R first_project.sh"
                sh "./first_project.sh ${params.NAME} ${params.LAST_NAME} ${params.SHOW}"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}