//
//  LessonCard.swift
//  Online Piano Lessons
//
//  Created by Brian Mahne on 10/22/24.
//
import SwiftUI
struct LessonCard: View {
    @Binding var videoUrlAsString: String
    var body: some View {
        VStack() {
            
            NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                VStack() {
                    
                    Text(Image(systemName: "video"))
                        .foregroundStyle(Color.white) +
                    Text(" 1.00: 5 Finger Scale and C Position")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(Color.white)
                    
                    Image("1.00_Still")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                        .padding()
                        .shadow(radius: 10, y: 10)
                    
                }
                .padding()
                
            }
            //simultaneously sets the url for viewer when link is clicked
            .simultaneousGesture(TapGesture().onEnded {
                
                videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.01%205%20Finger%20Scale%20and%20C%20Triad.mp4?alt=media&token=e05be21e-a3f8-4651-b7fd-250d043bbb25"
            
            })
            Divider()
                .overlay(.white)
        }
        .padding()
    }
}

struct LessonCardPreview: PreviewProvider {
    static var previews: some View {
        LessonCard(videoUrlAsString: .constant( "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.01%20Rhythm%20Lesson%20NEW.mp4?alt=media&token=b9f1212a-7c8b-48f4-89b3-08da46f63561"))
        
    }
}

