node('release') {
    stage('Checkout') {
        checkout scm
    }
    stage('Deploy') {
	echo "DEPLOY DEPLOY DEPLOY"
        sh '/app/docker-compose.yml up -d'
    }
}


