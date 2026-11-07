package com.opl.onlinepianolessons.ui

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import com.opl.onlinepianolessons.SubscriptionViewModel
import com.revenuecat.purchases.CustomerInfo
import com.revenuecat.purchases.Purchases
import com.revenuecat.purchases.models.StoreTransaction
import com.revenuecat.purchases.ui.revenuecatui.Paywall
import com.revenuecat.purchases.ui.revenuecatui.PaywallListener
import com.revenuecat.purchases.ui.revenuecatui.PaywallOptions

/**
 * Shows the same RevenueCat paywall the iOS app uses (PaywallView). The paywall design and
 * offering come from the RevenueCat dashboard; the Android products must be attached there.
 */
@Composable
fun PaywallScreen(onUnlocked: () -> Unit, onDismiss: () -> Unit) {
    if (!Purchases.isConfigured) {
        MissingKeyMessage(onDismiss)
        return
    }
    val options = PaywallOptions.Builder(dismissRequest = onDismiss)
        .setListener(object : PaywallListener {
            override fun onPurchaseCompleted(
                customerInfo: CustomerInfo,
                storeTransaction: StoreTransaction,
            ) {
                onUnlocked()
            }

            override fun onRestoreCompleted(customerInfo: CustomerInfo) {
                if (customerInfo.entitlements[SubscriptionViewModel.ENTITLEMENT_ID]?.isActive == true) {
                    onUnlocked()
                }
            }
        })
        .build()
    Paywall(options)
}

@Composable
private fun MissingKeyMessage(onDismiss: () -> Unit) {
    Column(
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black)
            .padding(32.dp),
    ) {
        Text(
            "Subscriptions aren't set up yet.\n\nAdd revenuecat.apiKey=goog_… to " +
                "android/local.properties and rebuild.",
            color = Color.White,
            textAlign = TextAlign.Center,
        )
        TextButton(onClick = onDismiss) { Text("Back", color = Accent) }
    }
}
