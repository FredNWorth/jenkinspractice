pipeline {
    agent any

    stages {
        stage('run bash file') {
            steps {
                sh 'chmod +x ssh-nginx.sh'
                sh './ssh-nginx.sh'
                  }
            }
        stage('get files') {
          steps {
            sh 'git clone https://gitlab.com/Reece-Elder/devops-m5-nodeproject.git'
          }
        }
        stage('build node') {
          steps{
             sh 'chmod +x npm-build.sh'
             sh './npm-build.sh'
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

