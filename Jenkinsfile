pipeline {
  agent any
  stages {
    stage('Inicialization') {
      steps {
        echo 'Pipeline started'
        mail(subject: '[Jenkins] Pipeline configuration', body: 'The Pipeline for the project GIT-PRATICA-03 was started', to: 'oliveiradavi@alu.ufc.br')
      }
    }

    stage('Test') {
      steps {
        echo 'Testing fase'
        sleep(time: 1, unit: 'MINUTES')
        build(job: 'unicorn-test', propagate: true)
      }
    }

    stage('Deploy') {
      steps {
        input 'Waiting for admin'
        echo 'Deploy started'
        mail(subject: '[Jenkins] Rodando deploy', body: 'Deploy successful', to: 'elielcosta@alu.ufc.br')
      }
    }

  }
  triggers {
    pollSCM('30 15 * * *')
  }
}