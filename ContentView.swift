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
    @Binding var videoUrlAsString: String

    
    private var subscriptionPaywall: some View {
        PaywallView()
            .onPurchaseCompleted { info in userViewModel.apply(info) }
            .onRestoreCompleted { info in userViewModel.apply(info) }
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
                    
                    NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
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
                    .simultaneousGesture(TapGesture().onEnded {
                        videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/IntroVideo.mp4?alt=media&token=3006ee92-cf37-433c-b572-e50d6c9cd4bb"
                    })
                    
                    
                    
                    
                    
                    //Lesson 1 link
                
                    NavigationLink(
                        destination: Lesson_1(videoUrlAsString: $videoUrlAsString)) {
                            HStack {
                                Text("Lesson 1")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.accentColor)
                                Spacer()
                                VStack {
                                    Text("Key of C Basic Reading")
                                        .foregroundStyle(Color.white)
                                    Text("Funndamentals")
                                        .foregroundStyle(Color.white)
                                }
                                Spacer()
                                Text(Image(systemName: "arrow.forward"))
                                    .foregroundStyle(Color.white)
                                
                            }
                            .padding()
                            .border(Color.white)
                            .padding(.horizontal, 32.0)
                        }	
                

                    
                    
                    //Lesson 2 Link
                    if userViewModel.isSubscriptionActive {
                        NavigationLink(destination: Lesson_2(videoUrlAsString: $videoUrlAsString)) {
                            HStack {
                                Text("Lesson 2")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.accentColor)
                                Spacer()
                                VStack {
                                    Text("Key of G and D")
                                        .foregroundStyle(Color.white)
                                    Text("Ear Training and Improv")
                                        .foregroundStyle(Color.white)
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
                    else {
                        NavigationLink(destination: subscriptionPaywall) {
                                HStack {
                                    Text("Lesson 2")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundStyle(Color.accentColor)
                                    Spacer()
                                    VStack {
                                        Text("36 video lessons and playalongs")
                                            .foregroundStyle(Color.white)
                                        Text("Ear Training and Improv")
                                            .foregroundStyle(Color.white)
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
                    
                    
                    //Lesson 3 Link
                    if userViewModel.isSubscriptionActive {
                        NavigationLink(destination: Lesson_3(videoUrlAsString: $videoUrlAsString)) {
                            HStack {
                                Text("Lesson 3")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.accentColor)
                                Spacer()
                                VStack {
                                    Text("Introducing Minor Keys")
                                        .foregroundStyle(Color.white)
                                    Text("Inversions")
                                        .foregroundStyle(Color.white)
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
                    else {
                        NavigationLink(destination: subscriptionPaywall) {
                                HStack {
                                    Text("Lesson 3")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundStyle(Color.accentColor)
                                    Spacer()
                                    VStack {
                                        Text("Introducing Minor Keys")
                                            .foregroundStyle(Color.white)
                                        Text("Inversions")
                                            .foregroundStyle(Color.white)
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
        .alert("Purchase or restore issue", isPresented: Binding(
            get: { userViewModel.purchaseError != nil },
            set: { if !$0 { userViewModel.purchaseError = nil } }
        )) {
            Button("OK", role: .cancel) { userViewModel.purchaseError = nil }
        } message: {
            Text(userViewModel.purchaseError ?? "Please try again.")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
static let userViewModel: UserViewModel = {
        if !Purchases.isConfigured { Purchases.configure(withAPIKey: "appl_eyCULxOtwyCZyrqjPkLRlcopstP") }
        return UserViewModel()
    }()
    
    
    static var previews: some View {
        ContentView(videoUrlAsString: .constant("firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/CMajScaleAndChordsEdited.mp4?alt=media&token=5c196198-0a29-4c22-a362-e5e555c7f65b"))
            .environmentObject(userViewModel)
    }
   
}

