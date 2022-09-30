pipeline {
    agent any

    stages {
        stage('run bash file') {
            steps {
                sh 'chmod +x ssh-nginx.sh'
                sh './ssh-nginx.sh'
                  }
            }
        stage('build node') {
          steps{
              sh 'docker-compose up -d'
              sh 'docker run dockerfile'
          }
        }
            }
    post {
  // Clean after build
    always {
        cleanWs()
           }
     }
}

