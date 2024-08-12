import java.util.Locale

val projectName = "Sangsang" // Volt - Change this value

pluginManagement {
    repositories {
        gradlePluginPortal()
        maven("https://repo.papermc.io/repository/maven-public/")
    }
}

plugins {
    id("org.gradle.toolchains.foojay-resolver-convention") version "0.4.0"
}

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
