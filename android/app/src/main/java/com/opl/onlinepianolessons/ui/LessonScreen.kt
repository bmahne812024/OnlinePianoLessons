package com.opl.onlinepianolessons.ui

import androidx.compose.foundation.Image
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.PictureAsPdf
import androidx.compose.material.icons.filled.Videocam
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
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
import com.opl.onlinepianolessons.data.Lesson
import com.opl.onlinepianolessons.data.LessonItem

/** One screen for every lesson (replaces Lesson 1.swift ... Lesson 4.swift). */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LessonScreen(lesson: Lesson, onPlayVideo: (String) -> Unit, onBack: () -> Unit) {
    val context = LocalContext.current
    PianoBackground {
        Scaffold(
            containerColor = Color.Transparent,
            topBar = {
                TopAppBar(
                    title = { Text(lesson.title) },
                    navigationIcon = {
                        IconButton(onClick = onBack) {
                            Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "Back")
                        }
                    },
                    colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = Color.Black.copy(alpha = 0.6f),
                        titleContentColor = Color.White,
                        navigationIconContentColor = Accent,
                    ),
                )
            },
        ) { padding ->
            LazyColumn(
                contentPadding = padding,
                modifier = Modifier.fillMaxSize(),
            ) {
                itemsIndexed(lesson.items) { index, item ->
                    // A divider goes before each new video that has a still image,
                    // which groups a lesson video with its playalongs and handouts.
                    if (index > 0 && item.isVideo && item.image != null) {
                        HorizontalDivider(Modifier.padding(horizontal = 16.dp), color = Color.White)
                    }
                    when {
                        item.isVideo -> VideoCard(item) { item.url?.let(onPlayVideo) }
                        item.isPdf -> PdfRow(item) { item.url?.let { context.openUrl(it) } }
                        else -> SectionHeader(item.title)
                    }
                }
            }
        }
    }
}

@Composable
private fun VideoCard(item: LessonItem, onClick: () -> Unit) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier
            .fillMaxWidth()
            .clickable(onClick = onClick)
            .padding(16.dp),
    ) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            Icon(Icons.Filled.Videocam, contentDescription = "Video", tint = Color.White)
            Spacer(Modifier.width(8.dp))
            Text(
                item.title,
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.Bold,
                color = Color.White,
                textAlign = TextAlign.Center,
            )
        }
        val res = drawableId(item.image)
        if (res != 0) {
            Image(
                painter = painterResource(res),
                contentDescription = null,
                contentScale = ContentScale.FillWidth,
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp)
                    .shadow(10.dp, RoundedCornerShape(25.dp))
                    .clip(RoundedCornerShape(25.dp)),
            )
        }
    }
}

@Composable
private fun PdfRow(item: LessonItem, onClick: () -> Unit) {
    Row(
        verticalAlignment = Alignment.CenterVertically,
        modifier = Modifier
            .fillMaxWidth()
            .clickable(onClick = onClick)
            .padding(horizontal = 24.dp, vertical = 12.dp),
    ) {
        Icon(
            Icons.Filled.PictureAsPdf,
            contentDescription = "PDF",
            tint = Color(0xFFE53935),
            modifier = Modifier.size(36.dp),
        )
        Spacer(Modifier.width(12.dp))
        Text(
            item.title,
            style = MaterialTheme.typography.titleMedium,
            fontStyle = FontStyle.Italic,
            color = Color.White,
        )
    }
}

@Composable
private fun SectionHeader(title: String) {
    Text(
        title,
        style = MaterialTheme.typography.headlineMedium,
        fontWeight = FontWeight.Bold,
        color = Color.White,
        textAlign = TextAlign.Center,
        modifier = Modifier
            .fillMaxWidth()
            .padding(16.dp),
    )
}
