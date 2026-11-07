//
//  Online_Piano_LessonsApp.swift
//  Online Piano Lessons
//
//  Created by Brian Mahne on 5/8/24.
//

import SwiftUI
import RevenueCat
@main

struct Online_Piano_LessonsApp: App {
    @StateObject private var userViewModel: UserViewModel
    @Environment(\.scenePhase) private var scenePhase
    @State private var videoUrlAsString = ""
   
    
    var body: some Scene {
        WindowGroup {
            
            ContentView(videoUrlAsString: $videoUrlAsString)
                
                .environmentObject(userViewModel)
                .onChange(of: scenePhase) { _, phase in
                    if phase == .active { userViewModel.refreshSubscriptionStatus() }
                }
                
            
        }
    }
    init() {
        #if DEBUG
        Purchases.logLevel = .debug
        #endif
        Purchases.configure(withAPIKey: "appl_eyCULxOtwyCZyrqjPkLRlcopstP")
        _userViewModel = StateObject(wrappedValue: UserViewModel())
    }
}
