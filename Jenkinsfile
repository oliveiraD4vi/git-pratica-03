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
        build(job: 'unicorn-test', propagate: true)
      }
    }

    stage('Deploy') {
      when {
        branch 'master'
      }
      steps {
        input 'Waiting for the admin'
        echo 'Deploy started'
      }
    }

  }
}