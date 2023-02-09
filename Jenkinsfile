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
                    docker.image("my-image:${env.BUILD_ID}").run('-p 80:80') { 
                    }
                }
            }
        }
    }
}