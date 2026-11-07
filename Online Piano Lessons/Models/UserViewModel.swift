import Foundation
import SwiftUI
import RevenueCat

@MainActor
final class UserViewModel: NSObject, ObservableObject, PurchasesDelegate {
    @Published private(set) var isSubscriptionActive = false
    @Published var purchaseError: String?
    @Published var toggle = false

    override init() {
        super.init()
        Purchases.shared.delegate = self
        refreshSubscriptionStatus()
    }

    func apply(_ customerInfo: CustomerInfo) {
        isSubscriptionActive = customerInfo.entitlements.active["Full Access"] != nil
    }

    func refreshSubscriptionStatus() {
        Task {
            do { apply(try await Purchases.shared.customerInfo()) }
            catch { purchaseError = error.localizedDescription }
        }
    }

    nonisolated func purchases(_ purchases: Purchases, receivedUpdated customerInfo: CustomerInfo) {
        Task { @MainActor in self.apply(customerInfo) }
    }
}
