pipeline {
    agent any
    stages {
        stage('build step') {
            steps {
                script {
                    def costumImage = docker.build("my-image:${env.BUILD_ID}", "-f Dockerfile .")
                }
            }
        }

        stage('run step') {
            steps {
                script {
                    sh "docker run -tid -p 90:90 my-image:${env.BUILD_ID}"
                }
            }
        }
    }
}