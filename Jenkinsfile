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
        mail(subject: '[Pipeline] Deploy stage', body: 'Deployment successful!', to: 'elielcosta@alu.ufc.br')
      }
    }

    stage('CleanUp') {
      steps {
        echo 'Cleaning code'
        input 'Waiting for the admin...'
        echo 'Completed!'
      }
    }

  }
  triggers {
    pollSCM('30 15 * * *')
  }
}