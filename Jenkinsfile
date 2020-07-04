pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t docker.pkg.github.com/haplo-tech/build.docker.dotnetcore.3/dotnetcore3:$BUILD_NUMBER .'
      }
    }

    stage('Push') {
      steps {
        withCredentials(bindings: [[$class: 'UsernamePasswordMultiBinding', credentialsId:'Haplo-Tech-GitHub', usernameVariable: 'githubUsername', passwordVariable: 'githubToken']]) {
          sh 'docker login docker.pkg.github.com -u $githubUsername -p $githubToken'
          sh 'docker push docker.pkg.github.com/haplo-tech/build.docker.dotnetcore.3/dotnetcore3:$BUILD_NUMBER'
        }
      }
    }

  }
}
