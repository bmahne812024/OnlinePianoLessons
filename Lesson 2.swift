//
//  Lesson 2.swift
//  Online Piano Lessons
//
//  Created by Brian Mahne on 5/10/24.
//

import SwiftUI

struct Lesson_2: View {
    /*
     declare videoUrlAsString and bind to same variable as state in
     maim app file
     */
    
    @Binding var videoUrlAsString: String
    
    //begin body of lesson 2
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                //first video link calling video view
                //begin 2.00 lesson links
                VStack(spacing: 0) {
                    
                    
                    VStack() {
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.00: G Scale and Primary Chords")
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
                        }
                        //simultaneously sets the url for viewer when link is clicked
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/GmajScaleAndChordsEdited.mp4?alt=media&token=6f711696-4ed1-4614-91f2-3016e98d51ea"
                        })
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.01%20G%20Scale%20and%20Primary%20Chords.pdf?alt=media&token=b13bd62e-76bd-4bfa-b43c-76fe5d4de900")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text(" 2.00: G Scale and Primary Chords Handout")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        Divider()
                            .overlay(.white)
                    }
                    .padding()
                    
                    
                    
                    //2.01 links
                    
                    
                    VStack() {
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.01: Lesson 2 Guide Notes")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("2.01_Still")
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
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.02%20Lesson%202%20Guide%20Notes.mp4?alt=media&token=ddfa2bf0-7207-4b53-b36b-48a0e734b92f"
                            
                        })
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.02%20Guide%20Notes.pdf?alt=media&token=c179064e-f328-4898-ad9c-677f0d4a677a")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text(" 2.01: Lesson 2 Guide Notes Handout")
                                .font(.title2)
                                .foregroundStyle(Color.white)
                                .italic()
                        })
                        Divider()
                            .overlay(.white)
                    }
                    .padding()
                    
                    //2.02
                    VStack() {
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.02: Reading Lesson 2a - G Jam")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                                Image("2.02_Still")
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
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.02b%20Lesson%202%20G%20Jam.mp4?alt=media&token=d5bf49d7-247a-40b3-9a37-667bc90647f6"
                            
                        })
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.02: Playalong 2a Slow")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                            .padding()
                        }
                        //simultaneously sets the url for viewer when link is clicked
                        .simultaneousGesture(TapGesture().onEnded {
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.02b%20Playalong%20G%20Jam%20Slow.mp4?alt=media&token=767724b8-57de-4df7-a6b4-92dbc9abd23d"
                            
                        })
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.02: Playalong 2a Medium")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                            .padding()
                        }
                        //simultaneously sets the url for viewer when link is clicked
                        .simultaneousGesture(TapGesture().onEnded {
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.02b%20Playalong%20G%20Jam%20Medium.mp4?alt=media&token=7922ad6a-cd0e-45cf-ad85-b1750b9b5ac6"
                            
                        })
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.02: Playalong 2a Fast")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                            .padding()
                        }
                        //simultaneously sets the url for viewer when link is clicked
                        .simultaneousGesture(TapGesture().onEnded {
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.02b%20Playalong%20G%20Jam%20Fast.mp4?alt=media&token=94d83600-6b44-49c1-8f88-f6fdf3474fbb"
                            
                        })
                        
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.021%20G%20Jam%20-%20reading.pdf?alt=media&token=28c8ee2a-0549-4238-9c79-2e5d2b12d6bd")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text(" 2.02: Reading Lesson 2a G Jam Sheet Music")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        
                        Divider()
                            .overlay(.white)

                    }
                    .padding()
                    
                    //2.03
                    VStack() {
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.03: G Position")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                                Image("2.03_Still")
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
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.03%20G%20position%20.mp4?alt=media&token=eea2a56c-95c5-4245-9050-f95ba945764c"
                            
                        })
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.03%20Reading%20Lesson%202a%20G%20Position%20and%20Reaching.pdf?alt=media&token=214607ed-e5ff-4d59-a2b2-700541bb5451")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text(" 2.03: G Position Handout")
                                .foregroundStyle(Color.white)
                                .font(.title2)
                                .italic()
                        })
                        .padding()
                        Divider()
                            .overlay(.white)
                    }
                    .padding()
                    
                    //2.04
                    VStack() {
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.04: Reading Lesson 2b Alouette")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                                Image("2.04_Still")
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
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.04%20Reading%20Lesson%202b%20Alouette.mp4?alt=media&token=9d1faf7b-378f-4416-94d3-c66191254079"
                            
                        })
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.04: Playalong 2b Slow")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                           
                        }
                        //simultaneously sets the url for viewer when link is clicked
                        .simultaneousGesture(TapGesture().onEnded {
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.04a%20Playalong%20Alouette%20Slow.mp4?alt=media&token=6f6ab61f-bd11-4c0b-a1b8-d0b256fe6623"
                            
                        })
                        .padding()
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.04: Playalong 2b Medium")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                           
                        }
                        //simultaneously sets the url for viewer when link is clicked
                        .simultaneousGesture(TapGesture().onEnded {
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.04a%20Playalong%20Alouette%20Medium.mp4?alt=media&token=79f4e7f1-1235-4593-8717-900f74500951"
                            
                        })
                        .padding()
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.04: Playalong 2b Fast")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                           
                        }
                        //simultaneously sets the url for viewer when link is clicked
                        .simultaneousGesture(TapGesture().onEnded {
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.04a%20Playalong%20Alouette%20Fast.mp4?alt=media&token=9247e501-4866-4979-9dc3-3ec462c96417"
                            
                        })
                        .padding()
                        
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.04%20Reading%20Lesson%202b%20Aloutte%20Melody.pdf?alt=media&token=92bdc940-15a8-4655-8cd3-c714ee5da2e2")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text(" 2.04: Alouette - Melody Only Sheet Music")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.04%20Reading%20Lesson%202b%20Aloutte%20with%20Harmony.pdf?alt=media&token=1a7e5160-f679-469c-9956-cfd956e9d841")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text(" 2.04: Alouette - With Harmony Sheet Music")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        Divider()
                            .overlay(.white)
                    }
                    .padding()
                    
                    //2.05
                    VStack() {
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.05: Ear Training")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("2.05_Still")
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
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.05%20Lesson%202%20Ear%20Training.mp4?alt=media&token=83c3b945-f220-4476-8b90-a3c1adbd24ce"
                            
                        })
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.05%20Ear%20Training.pdf?alt=media&token=59dca2f0-a36e-4134-8586-59acad326b8b")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text(" 2.05: Ear Training Handout")
                                .font(.title2)
                                .foregroundStyle(Color.white)
                                .italic()
                        })
                        .padding()
                        Divider()
                            .overlay(.white)
                    
                    }
                    .padding()
                    
                    //2.06
                    VStack() {
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.06: 12 Bar Blues in G")
                                    .font(.title)
                                    .foregroundStyle(Color.white)
                                    .fontWeight(.bold)
                                
                                Image("2.06_Still")
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
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.6%20-%2012%20Bar%20Blues%20Form%20in%20G.mp4?alt=media&token=75c2d7b4-7fb5-48f3-ae2c-0dd7a57a3cff"
                            
                        })
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.6%2012%20Bar%20Blues%20Form%20in%20G.pdf?alt=media&token=289ea0d6-1985-4080-a2a2-1cee0617375c")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text(" 2.06: 12 Bar Blues in G Sheet Music")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        Divider()
                            .overlay(.white)
                        
                    
                    }
                    .padding()
                    
                    //2.07
                    VStack() {
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.07: Time Signatures and Rhythm")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                                Image("2.07_Still")
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
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.07%20Rhythm%20Lesson.mp4?alt=media&token=02757e49-55b5-4d27-8347-db244cd554fd"
                            
                        })
                         
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.07%20Time%20Signatures.pdf?alt=media&token=d78f265b-4483-4ad8-bda0-1a24a21c4b84")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text(" 2.07: Time Signatures and Rhythm Handout")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        Divider()
                            .overlay(.white)
                    
                    }
                    .padding()
                    
                    //2.08
                    VStack() {
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.08: Reading Lesson 2d Phrasing")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("2.08_Still")
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
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.08%20Lesson%202d%20Yankee%20%20Doodle.mp4?alt=media&token=57fa086f-46cb-40dd-b641-b7e217f5b892"
                            
                        })
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.08: Playalong 2d Slow")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                               
                            }
                            .padding()
                            
                            
                        }
                        //simultaneously sets the url for viewer when link is clicked
                        .simultaneousGesture(TapGesture().onEnded {
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.08%20Playalong%202d%20Slow.mp4?alt=media&token=53a849d2-e00e-4b81-b72c-37be8476c589"
                        })
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.08: Playalong 2d Medium")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                               
                            }
                            .padding()
                            
                            
                        }
                        //simultaneously sets the url for viewer when link is clicked
                        .simultaneousGesture(TapGesture().onEnded {
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.08%20Playalong%202d%20Medium.mp4?alt=media&token=d4fdbf09-5058-44de-916a-d3c964129259"
                            
                        })
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.08: Playalong 2d Fast")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                               
                            }
                            .padding()
                            
                            
                        }
                        //simultaneously sets the url for viewer when link is clicked
                        .simultaneousGesture(TapGesture().onEnded {
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.08%20Playalong%202d%20Fast.mp4?alt=media&token=a08a401c-cbf0-4498-b594-35c3f7a84145"
                            
                        })
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.08%20Lesson%202d%20-%20Yankee%20Doodle.pdf?alt=media&token=7a850c91-f586-4006-a24f-949e142e5b95")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text(" 2.08 Lesson 2d Phrasing Sheet Music")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        Divider()
                            .overlay(.white)
                    
                    }
                    .padding()
                    
                    //2.09
                    VStack() {
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.09: D Major Scale and Chords")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("2.09_Still")
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
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.09%20D%20Scale%20and%20Chords.mp4?alt=media&token=f15105bd-5fd6-4226-bbcb-9ed21aec5744"
                            
                        })
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.09%20D%20Major%20Scales%20and%20Chords.pdf?alt=media&token=97b2f3d3-dc43-4a74-8e3f-c7677fc68eaf")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("2.09 D Scale and Chords Handout")
                                .font(.title2)
                                .foregroundStyle(Color.white)
                                .italic()
                        })
                        .padding()
                        Divider()
                            .overlay(.white)
                    
                    }
                    .padding()
                    
                    //2.10
                    
                    VStack() {
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.10: The V7 Chord")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("2.10_Still")
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
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.10%20Lesson%202e%20V7%20and%20Diatonic.mp4?alt=media&token=3e6ee883-eaae-43ee-8c83-7d44b0616bb4"
                            
                        })
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.10%20Lesson%202e%20V7%20Chord.pdf?alt=media&token=0caf3eff-6fcb-4218-8ff8-86cfe399c454")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text(" 2.10 The V7 Chord Handout")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        Divider()
                            .overlay(.white)
                    
                    }
                    .padding()
                    
                    //2.11
                    VStack() {
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.11: Reading Lesson 2f Brahms Lullaby")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("2.11_Still")
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
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.11%20%20Lesson%202f%20Brahms%20Lullaby.mp4?alt=media&token=3cc0afcb-8dac-4947-9a51-96a607b4cb96"
                            
                        })
                        .padding()
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.11: Playalong 2f Slow")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                              
                            }
                           
                        }
                        //simultaneously sets the url for viewer when link is clicked
                        .simultaneousGesture(TapGesture().onEnded {
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.11%20Playalong%20%20Brahms%20Slow.mp4?alt=media&token=3faf726d-b6b2-4185-92fa-7b952bd2f651"
                            
                        })
                        .padding()
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.11: Playalong 2f Medium")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                              
                            }
                           
                        }
                        //simultaneously sets the url for viewer when link is clicked
                        .simultaneousGesture(TapGesture().onEnded {
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.11%20Playalong%20Medium.mp4?alt=media&token=9fd973ed-a354-4c18-9c3a-b37a820f9ec9"
                            
                        })
                        .padding()
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.11%20Lesson%202f%20Brahms%20Lullaby.pdf?alt=media&token=eb682aba-062e-4ec9-9b97-37d43509121a")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text(" 2.11 Reading Lesson 2f Brahms Lullaby Sheet Music")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        Divider()
                            .overlay(.white)
                    
                    }
                    .padding()
                    
                    //2.12
                    VStack() {
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.12: 2 Octave Argpeggios w/ Crossover ")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("2.12_Still")
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
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.12%20Arpeggios%202%20octaves%20with%20crossover.mp4?alt=media&token=bdcebcdb-1a18-475b-b25d-04d990036d29"
                            
                        })
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.12%20Arpeggios%20C%20G%20D.pdf?alt=media&token=876d3486-f8a8-45a3-abb7-3b5a8e04ac64")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text(" 2.12: 2 Octave Argpeggios w/ Crossover Handout")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        Divider()
                            .overlay(.white)
                    
                    }
                    .padding()
                    
                    //2.13
                    VStack() {
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.13: Hanon Exercise 1")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("2.13_Still")
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
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.13%20Hanon%20Excercise%201.mp4?alt=media&token=028bc98c-935b-4e11-9a98-3be63a87d383"
                            
                        })
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.13%20Hanon%20Excercise%201.pdf?alt=media&token=31440043-bcbd-41af-a159-41b7fbeb196e")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text(" 2.13: Hanon Exercise 1 Sheet Music")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        
                        Divider()
                            .overlay(.white)
                    }
                    .padding()
                    
                    //2.14
                    VStack() {
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.14: Austrian Hymn")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                                Image("2.14_Still")
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
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.14%20Austrian%20Hymn%20pt%201.mp4?alt=media&token=f995b687-b062-42f1-a514-6bc73fc20260"
                            
                        })
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.14: Playalong 2g Slow")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                            .padding()
                        }
                        //simultaneously sets the url for viewer when link is clicked
                        .simultaneousGesture(TapGesture().onEnded {
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.14%20Playalong%202g%20Slow.mp4?alt=media&token=59f3af49-76be-4ae1-85c5-c2bc1408ff08"
                            
                        })
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.14: Playalong 2g Medium")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                            .padding()
                        }
                        //simultaneously sets the url for viewer when link is clicked
                        .simultaneousGesture(TapGesture().onEnded {
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.14%20Playalong%202g%20Medium.mp4?alt=media&token=72b20b9e-7780-46cc-9add-d58fe6b6f876"
                            
                        })
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.14%20Austrian%20Hymn.pdf?alt=media&token=b6fe860d-a620-4a63-9639-0a6d265a3854")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text(" 2.14: Austrian Hymn Sheet Music")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        Divider()
                            .overlay(.white)
                    
                    }
                    .padding()
                    //2.15
                    VStack() {
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 2.15: Lesson 2 Note Test")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("2.15_Still")
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
                            
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%202%2F2.15%20Lesson%202%20Note%20Test.mp4?alt=media&token=ba994374-3403-463a-88f9-a3a60e598530"
                            
                        })
                    
                        
                    }
                    .padding()
                    
                }
            }
            .background(Image("Background"))
        }
        .navigationTitle("")
    }
}

#Preview {
    Lesson_2(videoUrlAsString: .constant("https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/CMajScaleAndChordsEdited.mp4?alt=media&token=5c196198-0a29-4c22-a362-e5e555c7f65b"))
}
