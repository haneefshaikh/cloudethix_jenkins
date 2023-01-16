pipeline {
    agent any
     parameters {
        string(NAME: 'Haneef', defaultValue: 'Hello', description: 'How should I greet the world?'),
        string(LAST_NAME: 'SHAIKH', defaultValue: 'Hello', description: 'How should I greet the world?'),
        string(SHOW: 'true', defaultValue: 'Hello', description: 'How should I greet the world?')
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                bash test/test.sh ${params.NAME} ${params.LAST_NAME} ${params.SHOW}
            }
        
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
