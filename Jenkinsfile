pipeline{
    agent {  
        dockerfile {
        filename 'Dockerfile'
        } 
    }

    stages{
        stage('Go Version'){
            steps{
                sh "go --version"
            }
        }
        stage('Git Clone'){
            steps {
               git branch: "master", url:"https://github.com/inesistiq/sample-golang-jenkins.git"
            }
        }
        stage('Go Test'){
            steps {
              sh "go test ./... -cover"
            }
        }
         stage('Go Build'){
            steps {
              sh "go build ./..."
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