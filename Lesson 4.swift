//
// Lesson 4
//  Online Piano Lessons
//
//  Created by Brian Mahne on 6/7/24.
//
import SwiftUI

struct Lesson_4: View {
    
    
    //begin body of lesson 2
    
    var body: some View {
        
            
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

#Preview {
    Lesson_4()
}
