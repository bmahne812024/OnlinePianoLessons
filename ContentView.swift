//
//  FullAccessView.swift
//  Online Piano Lessons
//
//  Created by Brian Mahne on 6/3/24.
//

import SwiftUI
import RevenueCat
import RevenueCatUI

struct ContentView: View {
    @EnvironmentObject var userViewModel: UserViewModel
    @State private var showPaywall = false


    
    private var subscriptionPaywall: some View {
        PaywallView()
            .onPurchaseCompleted { info in userViewModel.apply(info); showPaywall = false }
            .onRestoreCompleted { info in userViewModel.apply(info); showPaywall = false }
            .onPurchaseFailure { error in userViewModel.purchaseError = error.localizedDescription }
            .onRestoreFailure { error in userViewModel.purchaseError = error.localizedDescription }
    }

    var body: some View {
        NavigationStack {
            VStack() {
                HStack {
                    Spacer()
                    Text("OML")
                        .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                        .fontWeight(.heavy)
                        .bold()
                        .foregroundColor(.accentColor)
                    Spacer()
                    
                }
                VStack {
                    Text("Online Music Lessons")
                        .font(.title2)
                        .foregroundStyle(Color.white)
                    Text("Piano Course")
                        .font(.title2)
                        .italic()
                        .foregroundStyle(Color.white)
                        
                }
                
                
                ScrollView {
                    
                    NavigationLink(destination: VideoViewer(urlString: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/IntroVideo.mp4?alt=media&token=3006ee92-cf37-433c-b572-e50d6c9cd4bb")) {
                        ZStack() {
                            Image("introstill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                .padding(10.0)
                                .shadow(radius: 10, y: 10)
                                .opacity(0.3)
                            //.background(.black)
                            Text("Introduction")
                                .foregroundColor(Color.white)
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            
                        }
                    }
                    
                    
                    
                    
                    
                    ForEach(LessonCatalog.lessons) { lesson in
                        if lesson.requiresSubscription && !userViewModel.isSubscriptionActive {
                            Button { showPaywall = true } label: {
                                LessonRow(lesson: lesson, isLocked: true)
                            }
                        } else {
                            NavigationLink(destination: LessonView(lesson: lesson)) {
                                LessonRow(lesson: lesson, isLocked: false)
                            }
                        }
                    }


                    //Email the teacher
                    if userViewModel.isSubscriptionActive {
                        HStack {
                            Link("Connect with your teacher", destination: URL(string: "mailto:omlschools@gmail.com")!)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundStyle(Color.accentColor)
                            
                            
                            Spacer()
                            Text(Image(systemName: "mail"))
                                .foregroundStyle(Color.white)
                        }
                        .padding()
                        .border(Color.white)
                        .padding(.horizontal, 32.0)
                        
                    }
                    else {
                        HStack {
                            Link("Connect with your teacher", destination: URL(string: "mailto:omlschools@gmail.com")!)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundStyle(Color.accentColor)
                            
                            
                            Spacer()
                            Text(Image(systemName: "mail"))
                                .foregroundStyle(Color.white)
                        }
                        .padding()
                        .border(Color.white)
                        .padding(.horizontal, 32.0)
                        .disabled(true)
                    }
                }
            }
        
            .background(Image("Background")
                    //.resizable()
            .scaledToFill()
        )
        
        
        }
        .sheet(isPresented: $showPaywall) {
            // The alert is attached here too: the root view can't present it while the sheet is up.
            subscriptionPaywall.purchaseErrorAlert(userViewModel)
        }
        .purchaseErrorAlert(userViewModel)
    }
}

private extension View {
    func purchaseErrorAlert(_ userViewModel: UserViewModel) -> some View {
        alert("Purchase or restore issue", isPresented: Binding(
            get: { userViewModel.purchaseError != nil },
            set: { if !$0 { userViewModel.purchaseError = nil } }
        )) {
            Button("OK", role: .cancel) { userViewModel.purchaseError = nil }
        } message: {
            Text(userViewModel.purchaseError ?? "Please try again.")
        }
    }
}

/// A lesson's button on the home screen.
private struct LessonRow: View {
    let lesson: Lesson
    let isLocked: Bool

    var body: some View {
        HStack {
            Text(lesson.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(Color.accentColor)
            Spacer()
            VStack {
                ForEach(isLocked ? (lesson.lockedSubtitle ?? lesson.subtitle) : lesson.subtitle, id: \.self) { line in
                    Text(line)
                        .foregroundStyle(Color.white)
                }
            }
            Spacer()
            Text(Image(systemName: "arrow.forward"))
                .foregroundStyle(Color.white)
        }
        .padding()
        .border(Color.white)
        .padding(.horizontal, 32.0)
    }
}

struct ContentView_Previews: PreviewProvider {
static let userViewModel: UserViewModel = {
        if !Purchases.isConfigured { Purchases.configure(withAPIKey: "appl_eyCULxOtwyCZyrqjPkLRlcopstP") }
        return UserViewModel()
    }()
    
    
    static var previews: some View {
        ContentView()
            .environmentObject(userViewModel)
    }
   
}

