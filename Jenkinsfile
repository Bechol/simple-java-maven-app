pipeline {
    agent any
    tools {
       maven 'maven'
    }
    stages {
        stage('Build') {
            steps {
                bat 'mvn -B -DskipTests clean install'
            }
        }
        stage('Test') {
            steps {
                bat 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
        stage('Run') {
            steps {
                script {
                    if (isUnix()) {
                        sh 'java -jar target/my-app-1.0-SNAPSHOT.jar' // Unix-based command
                    } else {
                        bat 'java -jar target/my-app-1.0-SNAPSHOT.jar' // Windows command
                    }
                }
            }
        }
    }
}
