pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Pipeline build started'
      }
    }

    stage('Test') {
      parallel {
        stage('Firefox') {
          steps {
            echo 'Testing on Firefox'
            sleep(time: 30, unit: 'SECONDS')
            build(job: 'unicorn-test', propagate: true)
          }
        }

        stage('Chrome') {
          steps {
            echo 'Testing on Chrome'
            sleep 30
            build 'unicorn-test'
          }
        }

        stage('Opera') {
          steps {
            echo 'Testing on Opera'
            sleep 30
            build 'unicorn-test'
          }
        }

      }
    }

    stage('Deploy') {
      when {
        branch 'master'
      }
      steps {
        echo 'Deploy started'
        input 'Waiting for admin...'
        emailext(subject: '[Pipeline] Deploy', body: 'Deploy sccessful!')
      }
    }

    stage('CleanUp') {
      steps {
        echo 'Cleaning code'
      }
    }

  }
  triggers {
    pollSCM('30 15 * * *')
  }
}