pipeline {
    agent any

    environment {
        STUDENT_NAME = 'Erasyl'
        STUDENT_SURNAME = 'Imashev'
        STUDENT_GROUP = 'IT2-2301'
        STUDENT_ID = '37792'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'echo "Building DevOps application"'
                sh 'ls -la'
            }
        }

        stage('Test') {
            steps {
                sh 'test -f Dockerfile'
                sh 'test -f app/main.py'
                sh 'echo "Tests passed"'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t imashev-erasyl-devops .'
            }
        }

        stage('Docker Run') {
            steps {
                sh '''
                    docker rm -f imashev-erasyl-ci || true
                    docker run -d \
                      --name imashev-erasyl-ci \
                      -e STUDENT_NAME="$STUDENT_NAME" \
                      -e STUDENT_SURNAME="$STUDENT_SURNAME" \
                      -e STUDENT_GROUP="$STUDENT_GROUP" \
                      -e STUDENT_ID="$STUDENT_ID" \
                      imashev-erasyl-devops
                    docker logs imashev-erasyl-ci
                '''
            }
        }
    }

    post {
        success {
            echo 'SUCCESS: Erasyl Imashev IT2-2301 37792'
        }
    }
}
