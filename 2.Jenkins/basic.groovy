pipeline {
    agent any

    stages {
        stage('Clone Code ') {
            steps {
                git 'https://github.com/keoKAY/reactjs-devop11-template.git'
            }
        }
        stage('Building Image') {
            steps {
                sh """
                docker build -t jenkins-reactjs-img:latest  . 
                """
            }
        }
        stage('Deploy container ') {
            steps {
                sh """  
                docker stop reactjs-cont || true 
                docker rm reactjs-cont || true 

                docker run -dp 3000:80 --name reactjs-cont \
                    jenkins-reactjs-img:latest
                """
            }
        }
    }
}
