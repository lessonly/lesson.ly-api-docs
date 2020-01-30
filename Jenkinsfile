pipeline {
    agent none

   environment {
        AWS_ACCESS_KEY_ID      = credentials('jenkins-docs-aws-secret-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('jenkins-docs-aws-secret-access-key')
    }
    stages {
        stage('deploy docs') {
            agent {
                docker { image 'ruby:2.6.5'}
            }
            steps {
                script {
                    sh 'bundle install'
                    sh 'bundle exec middleman build'
                    sh 'bundle exec middleman deploy'
                    sh 'bundle exec middleman invalidate'
                }
            }
        }
    }
}