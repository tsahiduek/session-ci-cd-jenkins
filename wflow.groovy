node ('opsschool-slaves'){
    currentBuild.result = "SUCCESS"

    stage('Checkout'){

        checkout scm
    }

    stage('Test'){
        sh 'ruby app/tc_ruby_app.rb'

        sh 'ls -ltrh test/reports/'
    }

    stage('Build'){
        sh 'sudo docker build --no-cache -t localhost:5000/opsschool_dummy_app:latest .'
        sh 'sudo docker push localhost:5000/opsschool_dummy_app:latest'
        sh 'sudo docker-compose stop'

        sh 'if [ ! "$(sudo docker ps -q -f name=opsschool_dummy_app)" ]; then\n' +
                '\tsudo docker rm -f opsschool_dummy_app\n' +
                'fi'
    }

}