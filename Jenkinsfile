pipeline {
    agent any

    stages {
        stage('run docker compose') {
            steps {
                sh 'docker-compose down'
                sh 'docker rm -a'
            }
            steps {
                sh 'docker-compose up -d'
            }
        }
    }
    post {
  // Clean after build
    always {
        cleanWs(
           }
     }
}

