package com.opl.onlinepianolessons.ui

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.Image
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.safeDrawingPadding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowForward
import androidx.compose.material.icons.filled.Email
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import com.opl.onlinepianolessons.data.CourseData
import com.opl.onlinepianolessons.data.Lesson

/** Android version of ContentView.swift. */
@Composable
fun HomeScreen(
    course: CourseData,
    isSubscribed: Boolean,
    onPlayVideo: (String) -> Unit,
    onOpenLesson: (Lesson) -> Unit,
) {
    val context = LocalContext.current
    PianoBackground {
        Column(Modifier.safeDrawingPadding()) {
            Header()
            LazyColumn(
                verticalArrangement = Arrangement.spacedBy(12.dp),
                modifier = Modifier.padding(top = 8.dp),
            ) {
                item {
                    IntroCard(
                        title = course.intro.title,
                        image = course.intro.image,
                        onClick = { onPlayVideo(course.intro.url) },
                    )
                }
                items(course.lessons, key = { it.id }) { lesson ->
                    LessonRow(
                        lesson = lesson,
                        lines = if (isSubscribed) lesson.subtitle else lesson.lockedSubtitle,
                        onClick = { onOpenLesson(lesson) },
                    )
                }
                item {
                    TeacherRow(
                        enabled = isSubscribed,
                        onClick = { context.sendEmail(course.teacherEmail) },
                    )
                }
            }
        }
    }
}

@Composable
private fun Header() {
    Column(Modifier.fillMaxWidth(), horizontalAlignment = Alignment.CenterHorizontally) {
        Text(
            "OML",
            style = MaterialTheme.typography.displayMedium,
            fontWeight = FontWeight.Black,
            color = Accent,
        )
        Text("Online Music Lessons", style = MaterialTheme.typography.titleLarge, color = Color.White)
        Text(
            "Piano Course",
            style = MaterialTheme.typography.titleLarge,
            fontStyle = FontStyle.Italic,
            color = Color.White,
        )
    }
}

@Composable
private fun IntroCard(title: String, image: String, onClick: () -> Unit) {
    val res = drawableId(image)
    Box(
        contentAlignment = Alignment.Center,
        modifier = Modifier
            .fillMaxWidth()
            .padding(10.dp)
            .clickable(onClick = onClick),
    ) {
        if (res != 0) {
            Image(
                painter = painterResource(res),
                contentDescription = null,
                contentScale = ContentScale.FillWidth,
                modifier = Modifier
                    .fillMaxWidth()
                    .shadow(10.dp, RoundedCornerShape(25.dp))
                    .clip(RoundedCornerShape(25.dp))
                    .alpha(0.3f),
            )
        }
        Text(title, style = MaterialTheme.typography.headlineMedium, color = Color.White)
    }
}

@Composable
private fun LessonRow(lesson: Lesson, lines: List<String>, onClick: () -> Unit) {
    BorderedRow(onClick = onClick) {
        Text(
            lesson.title,
            style = MaterialTheme.typography.headlineSmall,
            fontWeight = FontWeight.Bold,
            color = Accent,
        )
        Spacer(Modifier.width(12.dp))
        Column(Modifier.weight(1f), horizontalAlignment = Alignment.CenterHorizontally) {
            lines.forEach { Text(it, color = Color.White, textAlign = TextAlign.Center) }
        }
        Spacer(Modifier.width(12.dp))
        Icon(Icons.AutoMirrored.Filled.ArrowForward, contentDescription = null, tint = Color.White)
    }
}

@Composable
private fun TeacherRow(enabled: Boolean, onClick: () -> Unit) {
    BorderedRow(onClick = onClick, enabled = enabled) {
        Text(
            "Connect with your teacher",
            style = MaterialTheme.typography.titleLarge,
            fontWeight = FontWeight.Bold,
            color = if (enabled) Accent else Accent.copy(alpha = 0.4f),
            modifier = Modifier.weight(1f),
        )
        Icon(Icons.Filled.Email, contentDescription = null, tint = Color.White)
    }
}

@Composable
private fun BorderedRow(
    onClick: () -> Unit,
    enabled: Boolean = true,
    content: @Composable androidx.compose.foundation.layout.RowScope.() -> Unit,
) {
    Row(
        verticalAlignment = Alignment.CenterVertically,
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 32.dp)
            .border(BorderStroke(1.dp, Color.White))
            .clickable(enabled = enabled, onClick = onClick)
            .padding(16.dp),
        content = content,
    )
}
