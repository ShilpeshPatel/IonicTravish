pipeline {
   agent any
      environment {
         PATH='/usr/local/bin:/usr/bin:/bin'
      }
   stages {
      stage('NPM Setup') {
      steps {
         sh 'npm install'
      }
   }

   stage('IOS Build') {
   steps {
      sh 'ionic cordova build ios'
     } 
  }

   stage('Android Build') {
   steps {
      sh 'ionic cordova build android'
   }
  }

   stage('APK Sign') {
   steps {
    //   sh 'jarsigner -storepass your_password -keystore keys/yourkey.keystore platforms/android/app/build/outputs/apk/release/app-release-unsigned.apk nameApp'
    // sh "npm run appSign"
    echo "Android"
   }
   }

   stage('Stage Web Build') {
      steps {
        // sh 'npm run build --prod'
         echo "Web Build Action"
    }
  }

   stage('Publish Firebase Web') {
      steps {
    //   sh 'firebase deploy --token "Your Token Key"'
     echo "Publish Firebase Action"
   }
  }

   stage('Publish iOS') {
      steps {
       echo "Publish iOS Action"
    }
   }

   stage('Publish Android') {
     steps {
    echo "Publish Android API Action"
   }
  }

 }
}