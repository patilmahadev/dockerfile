pipeline {
    agent {
        label 'docker'
    }
    parameters {
        string(name: 'VERSION', defaultValue: '1.2')
        string(name: 'BRANCH', defaultValue: 'master')
    }
    stages {
        stage('build') {
            steps {
                echo 'building docker image...'
                git branch: "${params.BRANCH}", url: 'https://github.com/patilmahadev/dockerfile.git'
                sh "sudo docker build -t patilmahadev/docker-project:${params.VERSION} ."
            }
        }
        stage('test') {
            steps {
                echo 'testing docker image...'
            }
        }
        stage('deploy') {
            steps {
                echo 'deploying docker image...'
                sh "sudo docker push patilmahadev/docker-project:${params.VERSION}"
            }
        }
    }
}
