//
//  someClass.swift
//  Online Piano Lessons
//
//  Created by Brian Mahne on 6/5/24.
//

import Foundation
import SwiftUI
import RevenueCat
class UserViewModel: ObservableObject {
    @Published var isSubscriptionActive = false
    @Published var toggle = false
    
    init() {
        Purchases.shared.getCustomerInfo { (customerInfo, error) in
           
            // access latest customerInfo
            
            self.isSubscriptionActive = customerInfo?.entitlements.all["Full Access"]?.isActive == true
            
        }
    }

}
