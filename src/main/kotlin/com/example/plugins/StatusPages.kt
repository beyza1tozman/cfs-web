package com.example.plugins

import com.example.exceptions.CourseNotFoundException
import com.example.exceptions.FeedbackNotFoundException
import io.ktor.server.application.Application
import io.ktor.server.application.install
import io.ktor.server.freemarker.FreeMarkerContent
import io.ktor.server.response.respond

fun Application.configureStatusPages() {
    install(io.ktor.server.plugins.statuspages.StatusPages) {
        exception<Throwable> { call, cause ->
            when (cause) {
                is CourseNotFoundException -> {
                    // they are the same for now. we should make them different and cool
                    call.respond(FreeMarkerContent("coursenotfound.ftl", mapOf("message" to cause.message)))
                }

                is FeedbackNotFoundException -> {
                    call.respond(FreeMarkerContent("coursenotfound.ftl", mapOf("message" to cause.message)))
                }
            }
        }
    }
}