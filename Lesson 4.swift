//
// Lesson 4
//  Online Piano Lessons
//
//  Created by Brian Mahne on 6/7/24.
//
import SwiftUI

struct Lesson_4: View {
    /*
     declare videoUrlAsString and bind to same variable as state in
     maim app file
     */
    
    @Binding var videoUrlAsString: String
    
    //begin body of lesson 2
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
       
                VStack(spacing: 0) {
                    
                    //begin 3.00 lesson links
                    
                    VStack() {
                        
                        //NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" Lesson 4 Coming in July 2024 - Check the App Store for updates")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("2.00_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    .padding()
                                    .shadow(radius: 10, y: 10)
                                
                            }
                            .padding()
                       
                        Divider()
                            .overlay(.white)
                    }
                    .padding()
                    
                    
                    //begin 3.01 lesson links
                    
                    
                }
            }
            .background(Image("Background"))
        }
    }
}

#Preview {
    Lesson_4(videoUrlAsString: .constant("https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/CMajScaleAndChordsEdited.mp4?alt=media&token=5c196198-0a29-4c22-a362-e5e555c7f65b"))
}
