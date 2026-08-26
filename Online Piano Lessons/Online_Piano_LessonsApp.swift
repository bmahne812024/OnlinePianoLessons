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
    @StateObject var userViewModel = UserViewModel()
    @State private var videoUrlAsString = ""
   
    
    var body: some Scene {
        WindowGroup {
            
            ContentView(videoUrlAsString: $videoUrlAsString)
                
                .environmentObject(userViewModel)
                
            
        }
    }
    init() {
        Purchases.logLevel = .debug
        Purchases.configure(withAPIKey: "appl_eyCULxOtwyCZyrqjPkLRlcopstP")

        
    }
}
