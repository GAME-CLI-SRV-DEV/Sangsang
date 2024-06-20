import java.util.Locale

val projectName = "Volt" // Volt - Change this value

pluginManagement {
    repositories {
        gradlePluginPortal()
        maven("https://repo.papermc.io/repository/maven-public/")
    }
}

plugins {
    id("org.gradle.toolchains.foojay-resolver-convention") version "0.4.0"
}

// Volt start - Remove this
if (!file(".git").exists()) {
    val errorText = """
        
        =====================[ ERROR ]=====================
         The Volt project directory is not a properly cloned Git repository.
         
         In order to build Volt from source you must clone
         the repository using Git, not download a code zip from GitHub.
         If You Downloaded a code zip, type git init.
         프로젝트 디렉토리가 올바르지 않게 복제된 저장소입니다.
         코드를 ZIP으로 받으신 경우 git init을 입력하시고 빌드하세요.
        ===================================================
    """.trimIndent()
    error(errorText)
}
// Volt end - Remove this

if (file("libs").exists()) {
    dependencyResolutionManagement {
        versionCatalogs {
            create("api") {
                from(files("libs/api.versions.toml"))
            }
            create("server") {
                from(files("libs/server.versions.toml"))
            }
            create("common") {
                from(files("libs/common.versions.toml"))
            }
        }
    }
}

rootProject.name = projectName.lowercase()
for (name in listOf("$projectName-API", "$projectName-Server", "$projectName-MojangAPI")) {
    val projName = name.lowercase(Locale.ENGLISH)
    include(projName)
    findProject(":$projName")!!.projectDir = file(name)
}
