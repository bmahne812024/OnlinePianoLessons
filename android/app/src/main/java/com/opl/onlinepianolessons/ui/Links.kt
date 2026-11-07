package com.opl.onlinepianolessons.ui

import android.content.ActivityNotFoundException
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.widget.Toast

/** Opens a PDF (or any web link) in the user's browser / PDF viewer, like Link() on iOS. */
fun Context.openUrl(url: String) {
    try {
        startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
    } catch (e: ActivityNotFoundException) {
        Toast.makeText(this, "No app found to open this file", Toast.LENGTH_SHORT).show()
    }
}

fun Context.sendEmail(address: String) {
    try {
        startActivity(Intent(Intent.ACTION_SENDTO, Uri.parse("mailto:$address")))
    } catch (e: ActivityNotFoundException) {
        Toast.makeText(this, "No email app found", Toast.LENGTH_SHORT).show()
    }
}
