pipeline {
    agent any

    stages {
        stage('run docker compose') {
            steps {
                sh 'docker-compose up -d'
                }
        }
    }
}

