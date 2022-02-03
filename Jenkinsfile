pipeline {
  agent any
  stages {
    stage('Inicialização') {
      steps {
        echo 'Pipeline started'
        mail(subject: '[Jenkins] Pipeline configuration', body: 'The Pipeline for the project GIT-PRATICA-03 was started', to: 'oliveiradavi@alu.ufc.br')
      }
    }

    stage('Teste') {
      steps {
        echo 'Testing fase'
        sleep(time: 10, unit: 'MINUTES')
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploy started'
      }
    }

  }
}