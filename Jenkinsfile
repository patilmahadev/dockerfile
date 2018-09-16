pipeline {
  agent any
  parameters {
    string(name: 'BRANCH', defaultValue: 'master')
    string(name: 'NODEIP', defaultValue: '192.168.1.76')
  }
  stages {
    stage('build') {
      steps {
        echo 'building...'
        git branch: "${params.BRANCH}", url: 'https://github.com/patilmahadev/dockerfile.git'
      }
    }
    stage('test') {
      steps {
        echo 'testing...'
        git branch: "${params.BRANCH}", url: 'https://github.com/patilmahadev/dockerfile.git'
      }
    }
    stage('deploy') {
      steps {
        echo 'deploying...'
        git branch: "${params.BRANCH}", url: 'https://github.com/patilmahadev/dockerfile.git'
        sh "scp -i /var/lib/jenkins/secrets/27-may-18-ohio.pem index.html ec2-user@${params.NODEIP}:/var/www/html/"
      }
    }
  }
}
