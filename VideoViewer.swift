//
//  VideoViewer.swift
//  Online Piano Lessons
//
//  Created by Brian Mahne on 5/10/24.
//
import AVKit
import SwiftUI
struct VideoViewer: View {
    
    
    @Binding var videoUrlAsString: String
    @State private var player = AVPlayer()
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        
        NavigationStack {
            VideoPlayer(player: player)
                .onAppear {
                    if let url = URL(string: videoUrlAsString) {
                        //print("url loaded successful")
                        player = AVPlayer(url: url)
                    }

                    player.play()
                    //print("Playing video")
                    do {
                        try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
                    } catch {
                        //Didn't work
                    }
                }
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .navigationBarBackButtonHidden()
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            videoUrlAsString = ""
                            //print("Emptied the url")
                            dismiss()
                        } label: {
                            Text("Back")
                        }
                        
                    }
                }
        }
    }
    func playVideo() {
        
    }
}

struct VideoViewer_Previews: PreviewProvider {
    static var previews: some View {
        
        VideoViewer(videoUrlAsString: .constant("https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.01%205%20Finger%20Scale%20and%20C%20Triad.mp4?alt=media&token=e05be21e-a3f8-4651-b7fd-250d043bbb25"))
    }
}

