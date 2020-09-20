node('release') {
    stage('Checkout') {
        checkout scm
    }
    stage('Deploy') {
	sh 'docker-compose -f ./nginx/docker-compose.yml up -d'
	sh 'docker-compose -f ./app/docker-compose.yml up -d'
    }
}


