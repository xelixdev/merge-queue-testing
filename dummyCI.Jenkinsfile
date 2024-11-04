pipeline {
  agent {
    node {
      label 'spot-instances-frontend'
    }
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
            echo "SLEEPING for 20 seconds"
            sleep 20
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
