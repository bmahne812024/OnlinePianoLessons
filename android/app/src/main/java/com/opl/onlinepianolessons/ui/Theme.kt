package com.opl.onlinepianolessons.ui

import android.annotation.SuppressLint
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext

/** The iOS app's accent color is the system yellow. */
val Accent = Color(0xFFFFD60A)

private val Colors = darkColorScheme(
    primary = Accent,
    onPrimary = Color.Black,
    background = Color.Black,
    surface = Color.Black,
    onBackground = Color.White,
    onSurface = Color.White,
)

@Composable
fun PianoTheme(content: @Composable () -> Unit) {
    MaterialTheme(colorScheme = Colors, content = content)
}

/**
 * Looks up a drawable by the name stored in lessons.json. Returns 0 if it doesn't exist.
 * (Resource shrinking is off, so these images are kept in release builds.)
 */
@SuppressLint("DiscouragedApi")
@Composable
fun drawableId(name: String?): Int {
    val context = LocalContext.current
    return remember(name) {
        if (name == null) 0 else context.resources.getIdentifier(name, "drawable", context.packageName)
    }
}
