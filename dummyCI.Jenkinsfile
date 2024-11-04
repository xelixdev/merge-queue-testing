pipeline {
  agent {
    label "master"
  }
  options {
    timeout(time: 30, unit: 'MINUTES')
  }

  stages {
    stage('Dummy CI') {
      steps {
        script {
          sh '''
          while true
          do
            echo "SLEEPING for 5 minutes"
            sleep 300
            RAN_NUM=$(( RANDOM % 3 ))
            if [ "$RAN_NUM" -eq 1 ]; then
              echo "PASSED CI"
              break
            elif [ "$RAN_NUM" -eq 2 ]; then
              echo "FAILED CI"
              exit 1
            fi
          done
          '''
        }
      }
    }
  }
}
