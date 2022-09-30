pipeline {
    agent any

    stages {
        stage('run bash file') {
            steps {
                sh 'chmod +x ssh-nginx.sh'
                sh './ssh-nginx.sh'
                  }
            }
        stage('dun dockerfile') {
          steps {
            sh 'docker run Dockerfile'
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

