pipeline {
  environment {
    imagename = "yenigul/hacicenkins2332"
    registryCredential = 'yenigul-dockerhub2332'
    dockerImage = ''
  }
  agent any
  stages {
    // stage('Cloning Git') {
    //   steps {
    //     git([url: 'https://github.com/ismailyenigul/hacicenkins.git', branch: 'master', credentialsId: 'ismailyenigul-github-user-token'])

    //   }
    // }
    stage('Building and Running image') {
      steps{
          sh 'docker-compose build'
          sh 'docker-compose up -d'
        //   sh 'docker run -p 3001:8083'
        // script {
        //   dockerImage = docker.build imagename
        // }
      }
    }
    // stage('Running image') {
    //   steps{
    //       sh 'docker-compose up -d --build'
    //   }
    // }
    // stage('Cleaning after images') {
    //   steps{
    //       sh 'docker-compose down'
    //       sh 'docker rm -f $(docker ps -aq)'
    //   }
    // }
    // stage('Deploy Image') {
    //   steps{
    //     script {
    //       docker.withRegistry( '', registryCredential ) {
    //         dockerImage.push("$BUILD_NUMBER")
    //          dockerImage.push('latest')

    //       }
    //     }
    //   }
    // }
    // stage('Remove Unused docker image') {
    //   steps{
    //     sh "docker rmi $imagename:$BUILD_NUMBER"
    //      sh "docker rmi $imagename:latest"

    //   }
    // }
  }
}