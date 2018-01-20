node ('opsschool-slaves'){
    currentBuild.result = "SUCCESS"
    stage('Test'){
        def out = sh script: 'ls -ltrh', returnStdout: true
        out()
    }

}