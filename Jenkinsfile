pipeline{
    agent any
    stages{
        stage('clone from git hub or checkout'){
            steps{
                    git branch: 'main', url: 'https://github.com/gongiganesh107/HTML-project.git'
            }
        }
        stage('Build our Dockerfile'){
            steps{
                sh ''' docker build -t myappdockerima . '''
            }
        }
        stage('First change image name to tag name and then pushing into dockerhub for store and reuse'){
            steps{
                sh ''' docker tag myappdockerima ganeshgongi/myappconcicd:v1 '''
            }
        }
        stage('pusing into docker hub'){
            steps{
                script{
                    withDockerRegistry(credentialsId: 'docker-hub') {
                    sh ''' docker push ganeshgongi/myappconcicd:v1 '''
                    }
                }
            }
        }
        stage('Run the conatine'){
            steps{
                sh ''' docker pull ganeshgongi/myappconcicd:v1 '''
                sh ''' docker run --name myfinalapp -d -p 88:80 ganeshgongi/myappconcicd:v1 '''
            }
        }
    }
}
