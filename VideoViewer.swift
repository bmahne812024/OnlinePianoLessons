//
//  VideoViewer.swift
//  Online Piano Lessons
//
//  Created by Brian Mahne on 5/10/24.
//
import AVKit
import SwiftUI

struct VideoViewer: View {
    let urlString: String
    @State private var player: AVPlayer?

    var body: some View {
        Group {
            if let player {
                VideoPlayer(player: player)
            } else {
                ContentUnavailableView("Video unavailable",
                                       systemImage: "video.slash",
                                       description: Text("This video couldn't be loaded."))
            }
        }
        .ignoresSafeArea(edges: .bottom)
        .background(Color.black.ignoresSafeArea())
        .toolbarColorScheme(.dark, for: .navigationBar)
        .onAppear {
            guard player == nil, let url = URL(string: urlString) else { return }
            // Configure audio before playback so videos play even with the silent switch on.
            try? AVAudioSession.sharedInstance().setCategory(.playback, mode: .moviePlayback)
            let newPlayer = AVPlayer(url: url)
            player = newPlayer
            newPlayer.play()
        }
        .onDisappear {
            player?.pause()
        }
    }
}

#Preview {
    NavigationStack {
        VideoViewer(urlString: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.01%205%20Finger%20Scale%20and%20C%20Triad.mp4?alt=media&token=e05be21e-a3f8-4651-b7fd-250d043bbb25")
    }
}
