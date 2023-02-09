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
                    sh "docker run -tid -p 80:80 my-image:${env.BUILD_ID}"
                    // docker.image("my-image:${env.BUILD_ID}")with.run('-p 80:80') { 
                    // }
                }
            }
        }
    }
}