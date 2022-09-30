pipeline {
    agent any

    stages {
        stage('run bash file') {
            setps {
                sh 'chmod ssh-nginx.sh'
                sh './ssh-nginx.sh'
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

