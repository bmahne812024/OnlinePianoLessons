package com.opl.onlinepianolessons

import android.net.Uri
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.platform.LocalContext
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.NavType
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import androidx.navigation.navArgument
import com.opl.onlinepianolessons.data.CourseRepository
import com.opl.onlinepianolessons.ui.HomeScreen
import com.opl.onlinepianolessons.ui.LessonScreen
import com.opl.onlinepianolessons.ui.PaywallScreen
import com.opl.onlinepianolessons.ui.PianoTheme
import com.opl.onlinepianolessons.ui.VideoPlayerScreen

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            PianoTheme {
                PianoNavHost()
            }
        }
    }
}

private object Routes {
    const val HOME = "home"
    const val LESSON = "lesson/{lessonId}"
    const val VIDEO = "video?url={url}"
    const val PAYWALL = "paywall"

    fun lesson(id: Int) = "lesson/$id"
    fun video(url: String) = "video?url=${Uri.encode(url)}"
}

@Composable
private fun PianoNavHost(subscription: SubscriptionViewModel = viewModel()) {
    val context = LocalContext.current
    val course = remember { CourseRepository.load(context) }
    val isSubscribed by subscription.isSubscriptionActive.collectAsStateWithLifecycle()
    val nav = rememberNavController()

    NavHost(navController = nav, startDestination = Routes.HOME) {
        composable(Routes.HOME) {
            HomeScreen(
                course = course,
                isSubscribed = isSubscribed,
                onPlayVideo = { nav.navigate(Routes.video(it)) },
                onOpenLesson = { lesson ->
                    nav.navigate(if (isSubscribed) Routes.lesson(lesson.id) else Routes.PAYWALL)
                },
            )
        }
        composable(
            Routes.LESSON,
            arguments = listOf(navArgument("lessonId") { type = NavType.IntType }),
        ) { entry ->
            val id = entry.arguments?.getInt("lessonId")
            val lesson = course.lessons.firstOrNull { it.id == id }
            if (lesson != null) {
                LessonScreen(
                    lesson = lesson,
                    onPlayVideo = { nav.navigate(Routes.video(it)) },
                    onBack = { nav.popBackStack() },
                )
            }
        }
        composable(
            Routes.VIDEO,
            arguments = listOf(navArgument("url") { type = NavType.StringType; defaultValue = "" }),
        ) { entry ->
            VideoPlayerScreen(
                url = entry.arguments?.getString("url").orEmpty(),
                onBack = { nav.popBackStack() },
            )
        }
        composable(Routes.PAYWALL) {
            PaywallScreen(
                onUnlocked = {
                    subscription.refresh()
                    nav.popBackStack()
                },
                onDismiss = { nav.popBackStack() },
            )
        }
    }
}
