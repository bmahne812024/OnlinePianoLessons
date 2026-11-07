package com.opl.onlinepianolessons

import androidx.lifecycle.ViewModel
import com.revenuecat.purchases.CustomerInfo
import com.revenuecat.purchases.Purchases
import com.revenuecat.purchases.getCustomerInfoWith
import com.revenuecat.purchases.interfaces.UpdatedCustomerInfoListener
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/** Android version of UserViewModel.swift: tracks whether "Full Access" is active. */
class SubscriptionViewModel : ViewModel() {

    private val _isSubscriptionActive = MutableStateFlow(false)
    val isSubscriptionActive: StateFlow<Boolean> = _isSubscriptionActive.asStateFlow()

    private val listener = UpdatedCustomerInfoListener { update(it) }

    init {
        if (Purchases.isConfigured) {
            Purchases.sharedInstance.updatedCustomerInfoListener = listener
            refresh()
        }
    }

    fun refresh() {
        if (!Purchases.isConfigured) return
        Purchases.sharedInstance.getCustomerInfoWith(
            onError = { /* keep current state; the paywall will show again if needed */ },
            onSuccess = { update(it) },
        )
    }

    private fun update(info: CustomerInfo) {
        _isSubscriptionActive.value = info.entitlements[ENTITLEMENT_ID]?.isActive == true
    }

    override fun onCleared() {
        if (Purchases.isConfigured) Purchases.sharedInstance.removeUpdatedCustomerInfoListener()
    }

    companion object {
        /** Must match the entitlement name in the RevenueCat dashboard (same as iOS). */
        const val ENTITLEMENT_ID = "Full Access"
    }
}
