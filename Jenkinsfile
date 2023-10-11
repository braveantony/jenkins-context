pipeline {
    agent {
        kubernetes {
            inheritFrom 'mycicd'
            yamlFile 'cicd-pod.yaml'
            defaultContainer 'p1'
        }
    }
    stages {
        stage ('Build') {
            steps {
                sh 'podman build -t alp.httpd .'
                sh 'podman images'
                sh 'podman save alp.httpd > alp.httpd.tar'
            }
        }
    }
}
