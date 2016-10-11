node {
        env.HELLO_VERSION = "1.0."+env.BUILD_NUMBER+"-SNAPSHOT"
    env.GRADLE_USER_HOME = '~/.gradle'

      stage 'Build'
      sh 'chmod +x gradlew'
      echo env.user
        sh './gradlew clean build'
      stage 'Publish Artifact to Artifactory'
        sh './gradlew artifactoryPublish --debug --stacktrace'
      stage 'Publish Artifact to S3'
        sh './gradlew s3Upload --debug --stacktrace'

}