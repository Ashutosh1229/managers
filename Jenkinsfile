pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                echo 'Testing'
            }
        }
      stage('Build') {
            steps {
                echo 'Building'
            }
        }
      stage('Deploy') {
            steps {
                echo 'Deployed'
            }
        }
    }
  post{
    failure{
      echo 'Post: failed'
    }
  }
}
