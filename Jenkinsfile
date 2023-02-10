pipeline {
    agent any

    environment {
        DOCKER_USER = credentials('DOCKER_USER')
        DOCKER_PASSWORD = credentials('DOCKER_PASSWORD')
    }
    stages {
        stage('build step') {
            steps {
                script {
                    def costumImage = docker.build("${DOCKER_USER}/my-image:${env.BUILD_ID}", "-f Dockerfile .")
                }
            }
        }

        stage('login to dockerhub') {
            steps {
                script {
                    sh "echo ${DOCKER_PASSWORD} | docker login -u ${DOCKER_USER} --password-stdin"
                }
            }
        }

        stage('push to dockerhub') {
            steps {
                script {
                    sh "docker push ${DOCKER_USER}/my-image:${env.BUILD_ID}"
                }
            }
        }

        // stage('run step') {
        //     steps {
        //         script {
        //             sh "docker run -tid -p 80:80 my-image:${env.BUILD_ID}"
        //         }
        //     }
        // }
    }
}