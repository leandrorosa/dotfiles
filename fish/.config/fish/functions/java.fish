function gradleJib
    ./gradlew jibDockerBuild -Djib.from.image="4screenacrcommon.azurecr.io/fourscreen-eclipse-temurin:17-jre-alpine" -Djib.container.entrypoint="./entrypoint.sh"
end
