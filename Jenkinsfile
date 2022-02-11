pipeline{
  agent any
  stages{
    stage('deleting_exiting_containers'){
      steps{
        sudo docker rm -f $(sudo docker ps -a -q)
      }
    }
    stage('Updating Libs'){
      steps{
        apt update -y
      }
    }
    stage('Building_dockerimg'){
      steps{
        sudo docker build -t deploy .
      }
    }
    stage('Deploying'){
      steps{
        sudo docker run -it -d --name deployed -p 80:80 deploy
      }
    }
  }
}
