#! bin/bash 





 pipeline {
    agent any

    // Define the list of branches to build
    def branches = ['master', 'develop', 'feature/branch1', 'bugfix/branch2']

    // Loop through each branch and create a job
    for (def branch in branches) {
        // Define a stage for each branch
        stage("Build ${branch}") {
            steps {
                // Checkout the source code from the repository for the specified branch
                checkout([$class: 'GitSCM', branches: [[name: "refs/heads/${branch}"]], userRemoteConfigs: [[url: 'your_git_repository_url']]])
                
                // Your build steps here
                // For example, if you are using Maven:
                sh 'mvn clean install'
            }
        }
    }

    // Add more stages as needed for additional steps (testing, deployment, etc.)

    post {
        // Define post-build actions, such as notifications or cleanup
        success {
            echo 'All builds successful! Add any success actions here.'
        }
        failure {
            echo 'At least one build failed! Add any failure actions here.'
        }
    }
}
