pipeline {
    agent any

    stages {
        stage('run bash file') {
            steps {
                sh 'chmod +x ssh-nginx.sh'
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

