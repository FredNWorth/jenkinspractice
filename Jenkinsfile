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
            sh 'npm i --update'
            sh 'npm build'
            sh 'npm run'
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

