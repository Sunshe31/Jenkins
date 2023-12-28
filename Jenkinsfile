pipeline {
    agent any

    stages {
        stage('Run Robot Framework') {
            steps {
                script {
                    echo "Executing Robot Framework..."
                    bat "\"C:\\Users\\Archimedis Digital\\Robot Framework\" --outputdir Results --include Smoke \"C:\\Users\\Archimedis Digital\\Robot Framework\\tags.robot\""
                    echo "Robot Framework execution completed."
                }
            }
        }
    }

    post {
        always {
            echo 'This block runs always, add any additional cleanup steps here'
        }
    }
}
