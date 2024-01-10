pipeline{
    agent any
    stages{
        stage('clone from git hub or checkout'){
            steps{
                    git branch: 'main', url: 'https://github.com/gongiganesh107/kotiproject12.git'
            }
        }
        stage('Build our Dockerfile'){
            steps{
                sh ''' docker build -t myappdockerima1 . '''
            }
        }
        stage('First change image name to tag name and then pushing into dockerhub for store and reuse'){
            steps{
                sh ''' docker tag myappdockerima1 ganeshgongi/myappconcicd1:v2 '''
            }
        }
        stage('pusing into docker hub'){
            steps{
                script{
                    withDockerRegistry(credentialsId: 'docker-hub') {
                    sh ''' docker push ganeshgongi/myappconcicd1:v2 '''
                    }
                }
            }
        }
        stage('Run the conatine'){
            steps{
                sh ''' docker pull ganeshgongi/myappconcicd1:v2 '''
                sh ''' docker run --name myfinalappsec -d -p 89:80 ganeshgongi/myappconcicd1:v2 '''
            }
        }
    }
}
