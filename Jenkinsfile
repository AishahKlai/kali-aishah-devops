pipeline {
    agent any
 
    options {
        skipDefaultCheckout(true)
    }
 
    environment {
        STUDENT_NAME    = 'Aishah'
        STUDENT_SURNAME = 'Kali'
        STUDENT_GROUP   = 'IT2-2309'
        STUDENT_ID      = '37830'
        COURSE          = 'DevOps'
        IMAGE_NAME      = 'kali-aishah-devops'
        CONTAINER_NAME  = 'kali-aishah-container'
    }
 
    stages {
        stage('Checkout') {
            steps {
                checkout scm
                sh 'git log -1 --oneline'
                echo "Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"
                echo "Group: ${STUDENT_GROUP}"
                echo "Student ID: ${STUDENT_ID}"
            }
        }
 
        stage('Build') {
            steps {
                sh 'python3 --version'
                sh 'python3 -m py_compile app/app.py'
                echo 'Build OK: app.py compiled without errors'
            }
        }
 
        stage('Test') {
            steps {
                sh '''
                    OUTPUT=$(python3 app/app.py)
                    echo "$OUTPUT"
                    echo "$OUTPUT" | grep -q "Application is running successfully!"
                    echo "$OUTPUT" | grep -q "Student ID: ${STUDENT_ID}"
                    echo "TEST PASSED"
                '''
            }
        }
 
        stage('Docker Build') {
            steps {
                sh 'docker build -t ${IMAGE_NAME} .'
                sh 'docker images ${IMAGE_NAME}'
            }
        }
 
        stage('Docker Run') {
            steps {
                sh '''
                    docker rm -f ${CONTAINER_NAME} || true
                    docker run --name ${CONTAINER_NAME} \
                        -e STUDENT_NAME=${STUDENT_NAME} \
                        -e STUDENT_SURNAME=${STUDENT_SURNAME} \
                        -e STUDENT_GROUP=${STUDENT_GROUP} \
                        -e STUDENT_ID=${STUDENT_ID} \
                        ${IMAGE_NAME}
                    docker ps -a --filter name=${CONTAINER_NAME}
                '''
            }
        }
    }
 
    post {
        success { echo 'Pipeline finished successfully' }
        failure { echo 'Pipeline failed - check the stage that is marked red' }
    }
}

