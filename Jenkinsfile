#!/usr/bin/env groovy

pipeline {
  agent {
    dockerfile {
      filename: 'Dockerfile.orca' // Use the Dockerfile for Orca
    }
  }
  environment {
    IMAGE_NAME = '<image name>'
    PROJECT_KEY = '<project key>' // Set the desired project for CLI scanning
  }
  stages {
    stage('scan') {
      steps {
        withCredentials([string(credentialsId: 'ORCA_SECURITY_API_TOKEN', variable: 'TOKEN')]) {
          sh '''
            # Run Orca-CLI with the specified project and image
            orca-cli -p ${PROJECT_KEY} image scan ${IMAGE_NAME}
          '''
        }
      }
    }
  }
}