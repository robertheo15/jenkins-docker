node {
    docker.image('python:latest').inside('-p 3000:3000') {
        stage('Python version: ') {
            try {
                sh 'python3 --version'
            } catch (Exception e) {
                currentBuild.result = 'FAILURE'
                throw e
            }
        }
        stage('Running python script:') {
            try {
                sh 'python3 main.py'
            } catch (Exception e) {
                currentBuild.result = 'FAILURE'
                throw e
            }
        }
    }
}