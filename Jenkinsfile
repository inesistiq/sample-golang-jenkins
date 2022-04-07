pipeline{
    agent any
    stages{
        stage('Git Clone'){
            steps {
               git branch: "master", url:"https://github.com/inesistiq/sample-golang-jenkins.git"
            }
        }
        stage('Go Docker'){
            steps {
              sh "docker build -t sample-golang-jenkins ."
            }
        }
         stage('Deployment'){
            steps {
              echo "DEPLOY SUCCESS"
            }
        }
    }
   
}

// node {
    
//     def root = "/usr/local/go/bin/go"

//     stage 'Checkout'
//     git url:'https://github.com/inesistiq/sample-golang-jenkins.git'
    
//     stage 'preTest'
//     sh "${root} version"
    
//     stage 'Test'
//     sh "${root} test ./... -cover"
    
//     stage 'Build'
//     sh "${root} build ./..."
// }