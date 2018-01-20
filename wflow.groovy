node ('opsschool-slaves'){
    currentBuild.result = "SUCCESS"

    stage('Checkout'){

        checkout scm
    }
    
    stage('Test'){
        def out = sh script: 'ls -ltrh', returnStdout: true
        out()
    }

}