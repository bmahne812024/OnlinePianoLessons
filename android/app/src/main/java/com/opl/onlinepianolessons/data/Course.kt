package com.opl.onlinepianolessons.data

import android.content.Context
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json

/*
 * All lesson content lives in assets/lessons.json instead of being hard-coded in each screen
 * (the iOS app repeats one SwiftUI block per video). To add a video or handout, edit the JSON.
 */

@Serializable
data class CourseData(
    val intro: Intro,
    val teacherEmail: String,
    val lessons: List<Lesson>,
)

@Serializable
data class Intro(
    val title: String,
    val image: String,
    val url: String,
)

@Serializable
data class Lesson(
    val id: Int,
    val title: String,
    /** Two lines shown on the home screen when the user is subscribed. */
    val subtitle: List<String>,
    /** Two lines shown on the home screen before the user subscribes. */
    val lockedSubtitle: List<String>,
    val items: List<LessonItem>,
)

@Serializable
data class LessonItem(
    /** "video", "pdf" or "header". */
    val type: String,
    val title: String,
    val url: String? = null,
    /** Name of a drawable in res/drawable-nodpi, e.g. "still_1_00". */
    val image: String? = null,
) {
    val isVideo get() = type == "video"
    val isPdf get() = type == "pdf"
}

object CourseRepository {
    private val json = Json { ignoreUnknownKeys = true }

    @Volatile
    private var cached: CourseData? = null

    fun load(context: Context): CourseData = cached ?: synchronized(this) {
        cached ?: context.assets.open("lessons.json").bufferedReader().use {
            json.decodeFromString(CourseData.serializer(), it.readText())
        }.also { cached = it }
    }
}
