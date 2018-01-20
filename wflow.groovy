node ('opsschool-slaves'){
    currentBuild.result = "SUCCESS"

    stage('Checkout'){

        checkout scm
    }

    stage('Test'){
        sh 'ls -ltrha'
    }

}