pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                echo 'Tested'
            }
        }
      stage('Build') {
            steps {
                echo 'Building'
            }
        }
      stage('Deploy') {
            steps {
                echo 'Deploying'
            }
        }
    }
  post{
    failure{
      echo 'Post: failed'
    }
  }
}
