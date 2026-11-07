package com.opl.onlinepianolessons

import android.app.Application
import com.revenuecat.purchases.LogLevel
import com.revenuecat.purchases.Purchases
import com.revenuecat.purchases.PurchasesConfiguration

/** Android equivalent of the iOS app's init(): sets up RevenueCat once at launch. */
class PianoApp : Application() {
    override fun onCreate() {
        super.onCreate()
        val apiKey = BuildConfig.REVENUECAT_API_KEY
        if (apiKey.isNotBlank()) {
            if (BuildConfig.DEBUG) Purchases.logLevel = LogLevel.DEBUG
            Purchases.configure(PurchasesConfiguration.Builder(this, apiKey).build())
        }
    }
}
