//
//  Lesson 1.swift
//  Online Piano Lessons
//
//  Created by Brian Mahne on 5/10/24.
//

import SwiftUI
struct Lesson_1: View {
    /*
     declare videoUrlAsString and bind to same variable as state in
     maim app file
     */
    @Binding var videoUrlAsString: String
    //begin body of lesson 1
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                //first video link calling video view
                //begin 1.00 lesson links
                VStack(spacing: 0) {
                    
                    
                    VStack() {
                        		
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack {
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
                    
                    
                    
                    
                    
                    
                    
                    VStack() {
                        //1.01 links
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.01 Rhythm Notation")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("1.02_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    .padding()
                                    .shadow(radius: 10, y: 10)
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.01%20Rhythm%20Lesson%20NEW.mp4?alt=media&token=b9f1212a-7c8b-48f4-89b3-08da46f63561"
                        })
                        
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.02%20Rhythm%20Notation.pdf?alt=media&token=02493fec-fe91-44e0-a0df-a65eaa3e354e")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("1.01 Rhythm Notation Handout")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        
                        Divider()
                            .overlay(.white)
                        
                    }
                    .padding()
                  
                 
                    
                    
                    VStack() {
                        //1.02 links
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.02 Lesson - 3 Simple Songs")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("1.01_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    .padding()
                                    .shadow(radius: 10, y: 10)
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.02%20Lesson.mp4?alt=media&token=f77a6cc3-a5ff-43e2-a135-de49e0675ee7"
                        })
                        
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.02%203%20C%20Position%20Songs.pdf?alt=media&token=d04bd57c-def3-4d56-86bb-96eafa59c3bf")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("1.02 3 Simple Songs - Handout")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.02 Playalong - Mary Had a Little Lamb - SLOW")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.02%20Playalong%20Mary%20Had%20Slow.mp4?alt=media&token=3962f3dd-fb8d-4156-9777-778c6370249d"
                        })
                        
                       
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.02 Playalong - Mary Had a Little Lamb - Medium")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.02%20Playalong%20Mary%20Had%20Medium.mp4?alt=media&token=60b13c8a-a490-422c-90da-e66476f8390c"
                        })
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.02 Playalong - Mary Had a Little Lamb - Fast")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.02%20Playalong%20Mary%20Had%20Medium.mp4?alt=media&token=60b13c8a-a490-422c-90da-e66476f8390c"
                        })
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.02 Playalong - Jingle Bells - SLOW")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.02%20Playalong%20Jingle%20Bells%20Slow.mp4?alt=media&token=bcf914cb-9be7-4f4b-8487-5b15e3982ceb"
                        })
                     
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.02 Playalong - Jingle Bells - Medium")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.02%20Playalong%20Jingle%20Bells%20Medium.mp4?alt=media&token=3ac4c48d-d17d-4e18-bfbe-e8f43b2ee061"
                        })
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.02 Playalong - Jingle Bells - Fast")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.02%20Playalong%20Jingle%20Bells%20Fast.mp4?alt=media&token=e0cf4562-ca4f-4b4f-8e14-67cec03f2d09"
                        })
                     
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.02 Note Test")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.00%20Note%20Test.mp4?alt=media&token=2cafa5cd-ddbf-4e3d-8e71-535b0833085a"
                        })
                        
                        
                        Divider()
                            .overlay(.white)
                        
                    }
                    .padding()
                    
                    //1.03 links
                    
                    VStack() {
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video")) 
                                    .foregroundStyle(Color.white) +
                                Text(" 1.03 C Major Scale and Primary Chords")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("1.03_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    
                                    .shadow(radius: 10, y: 10)
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/CMajScaleAndChordsEdited.mp4?alt=media&token=5c196198-0a29-4c22-a362-e5e555c7f65b"
                        })
                        
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.03%20C%20Major%20Scale%20and%20Primary%20Chords.pdf?alt=media&token=f69e9bb5-436d-4c36-91ff-51ede01cdc74")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("1.03 C Scale and Chords Handout")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        
                        Divider()
                            .overlay(.white)
                        
                    }
                    
                    .padding()
                    
                    
                    
                    
                    //1.04 links
                    VStack() {
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.04 Lesson 1 Guide Notes")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("1.04_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    
                                    .shadow(radius: 10, y: 10)
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.04%20-%20Guide%20Notes.mp4?alt=media&token=3a6f5757-4a47-4b5e-af50-4a253c4bf01a"
                        })
                        
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.04%20Guide%20Notes.pdf?alt=media&token=7140fa39-a80e-4b1a-b8d0-d2d417661d54")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("1.04 Lesson 1 Guide Notes Handout")
                                .font(.title2)
                                .foregroundStyle(Color.white)
                                .italic()
                        })
                        .padding()
                        
                        
                        Divider()
                            .overlay(.white)
                    }
                    .padding()
                    
                    
                    
                        
                    
                    //1.05 links
                    VStack() {
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.05 Reading Lesson 1a")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("1.05_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    
                                    .shadow(radius: 10, y: 10)
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.05%20Reading%20Lesson%201a.mp4?alt=media&token=13796d29-45de-4cbd-8723-7f1a48497927"
                        })
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.05 Playalong Video 1a Slow")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.05%20Playalong%201a%20Slow.mp4?alt=media&token=8fa305b0-862f-46dc-b4da-843d6ab7bf1f"
                        })
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.05 Playalong Video 1a Medium")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.05%20Playalong%201a%20Medium.mp4?alt=media&token=c2bfa4ee-af44-47ce-9585-3b296f74412b"
                        })
                        
                        
                        
                        
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.05%20Lesson%201a%20Reading%20Lesson.pdf?alt=media&token=d84af1c9-addc-4afa-acda-18ef4c38c35c")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("1.05 Reading Lesson 1a Sheet Music")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        
                        Divider()
                            .overlay(.white)
                        
                       
                    }
                    .padding()
                    
                
                    
                    
                    
                    //1.06 links
                    VStack() {
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.06 Reading Lesson 1b")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("1.06_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    .padding()
                                    .shadow(radius: 10, y: 10)
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.06%20Reading%20Lesson%201b.mp4?alt=media&token=43aa219d-4acb-4ea4-ad08-7e54bc3ddf92"
                        })
                        .padding()
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.06 Playalong 1b Slow")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.06%20Playalong%201b%20Slow.mp4?alt=media&token=89abac24-6956-4720-8559-0cddf1881062"
                        })
                        
                        .padding()
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.06 Playalong 1b Medium")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.06%20Playalong%201b%20Medium.mp4?alt=media&token=d234f273-f75c-48c8-8935-a75d3c15486d"
                        })
                        .padding()
                        
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.06%20Lesson%201b%20Reading%20Lesson.pdf?alt=media&token=fae309db-7e75-4561-95f8-fdd0db3636a1")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("1.06 Reading Lesson 1b Sheet Music")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        
                        Divider()
                            .overlay(.white)
                    }
                    .padding()
                    
                    
                    //1.07 links
                    VStack() {
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.07 Reading Lesson 1c")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("1.07_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    .padding()
                                    .shadow(radius: 10, y: 10)
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.07%20Reading%20Lesson%201c.mp4?alt=media&token=c89e78ab-9c46-4a71-863a-498ad1c0b9bc"
                        })
                        .padding()
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.07 Playalong 1c Slow")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.07%20Playalong%201c%20Slow.mp4?alt=media&token=33aa1d6f-dbc2-41e4-9c1d-68bc25244b81"
                        })
                        .padding()
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.07 Playalong 1c Medium")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.07%20Playalong%201c%20Medium.mp4?alt=media&token=0d80df79-dd3d-45ef-a5ed-b4cda8439934"
                        })
                        .padding()
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.07%20Lesson%201c%20Reading%20Lesson.pdf?alt=media&token=bce89be0-5c3c-495f-bf8a-516467ec4966")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("1.07 Reading Lesson 1c Sheet Music")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        
                        Divider()
                            .overlay(.white)
                    }
                    .padding()
                   
                    
                    //1.08 links
                    
                    VStack() {
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.08 Improv - G Blues and LH Pattern")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("1.08_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    .padding()
                                    .shadow(radius: 10, y: 10)
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.08%20G%20Blues%20Scale%20and%20LH%20Pattern.mp4?alt=media&token=aa108b38-9672-449a-887c-2cb524216a08"
                        })
                        
                        
                        
                        
                        
                        Divider()
                            .overlay(.white)
                    }
                    .padding()
                    
                    
                    //1.09 links
                    VStack() {
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.09 Reading Lesson 1d - Prelude")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("1.09_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    .padding()
                                    .shadow(radius: 10, y: 10)
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.09%20Lesson%201%20Prelude.mp4?alt=media&token=33dd22e3-9230-48af-a0a5-db2d2d6a4dc7"
                        })
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.09 Playalong 1d Slow")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.09%20Playalong%201d%20Slow.mp4?alt=media&token=4e9d8972-709f-4c00-b448-20f6dec96463"
                        })
                        .padding()
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.09 Playalong 1d Medium")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.09%20Playalong%201d%20Medium.mp4?alt=media&token=dab65cdf-cfe2-43b4-9466-4c2ac1c6b6c0"
                        })
                        .padding()
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.09 Playalong 1d Fast")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.09%20Playalong%201d%20Fast.mp4?alt=media&token=d1e34886-8f58-4b0a-b5cd-f8823ed321b4"
                        })
                        .padding()
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.09%20Lesson%201d%20Prelude.pdf?alt=media&token=82efb528-9c68-4b6c-b2c0-5e06fd49caa0")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("1.09 Reading Lesson 1d - Prelude Sheet Music")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        
                        
                        Divider()
                            .overlay(.white)
                    }
                    .padding()
                   
                    
                    //1.10 links
                    VStack() {
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.10 Reading Lesson 1e - A Simple Hymn")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("1.10_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    .padding()
                                    .shadow(radius: 10, y: 10)
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.10%20Lesson%201%20Hymn.mp4?alt=media&token=37c0f6b0-fe54-480a-b1e0-1fb9ae624e92"
                        })
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.10 Playalong 1e Slow")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.10%20Playalong%201e%20Slow.mp4?alt=media&token=1fa4edd7-3055-4453-9999-fa12896300d3"
                        })
                        .padding()
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.10 Playalong 1e Medium")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.10%20Playalong%201e%20Medium.mp4?alt=media&token=760a66e6-cd4a-452e-a5c0-1dc6faf91a1e"
                        })
                        .padding()
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.10%20A%20Simple%20Hymn.pdf?alt=media&token=6b438f65-a6f2-4890-9277-16d955b09fdb")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("1.10 Reading Lesson 1e - A Simple Hymn Sheet Music")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        Divider()
                            .overlay(.white)
                    }
                    .padding()
                    
                    //1.11 links
                    VStack() {
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.11 Reading Lesson 1f - Greatest Day")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("1.11_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    .padding()
                                    .shadow(radius: 10, y: 10)
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.11%20Greatest%20Day.mp4?alt=media&token=efd75a8e-b714-4bbf-9709-6cb906b0fa95"
                        })
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.11 Playalong 1f Slow")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.11%20Playalong%201f.%20Slow.mp4?alt=media&token=1ea5f017-593b-4172-8ac7-a1024e62f878"
                        })
                        .padding()
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.11 Playalong 1f Medium")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.11%20Playalong%201f%20Medium.mp4?alt=media&token=ef9beb37-6a18-46b5-bb90-638ac870069d"
                        })
                        .padding()
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.11 Playalong 1f Fast")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.11%20Playalong%201f%20Fast.mp4?alt=media&token=1fc20e50-c432-49fc-8ebb-25403133b823"
                        })
                        .padding()
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.11%20Greatest%20Day.pdf?alt=media&token=122d0b24-4a26-4484-b726-48965af23c8c")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("1.11 Reading Lesson 1f - Greatest Day Sheet Music")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        Divider()
                            .overlay(.white)                    }
                    .padding()

                    //1.12links
                    VStack() {
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.12 Reading Lesson 1g - Hornpipe")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("1.12_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    .padding()
                                    .shadow(radius: 10, y: 10)
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.12%20Hornpipe.mp4?alt=media&token=c1e7e822-cae5-46db-a25a-92d9f33d0040"
                        })
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.12 Playalong 1g Slow")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.12%20Playalong%201g%20Slow.mp4?alt=media&token=94aafa0e-a848-4315-966f-dfac0028bf42"
                        })
                        .padding()
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.12 Playalong 1g Medium")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.12%20Playalong%201g%20Medium.mp4?alt=media&token=2e2d8fa7-8a67-40b2-8af3-d72a385f8cc2"
                        })
                        .padding()
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.12 Playalong 1g Fast")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.12%20Playalong%201g%20Fast.mp4?alt=media&token=abba2eff-36e4-4e7a-8fa9-ae110dd9d5be"
                        })
                        .padding()
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.12%20Hornpipe.pdf?alt=media&token=118028e7-665a-4191-a951-87f715be75b9")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("1.12 Reading Lesson 1g - Hornpipe Sheet Music")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        Divider()
                            .overlay(.white)                    }
                    .padding()
                
                    //1.13 links
                    VStack() {
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.13 Reading Lesson 1h: Twinkle Twinkle")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("1.13_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    .padding()
                                    .shadow(radius: 10, y: 10)
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.13%20Twinkle%20Twinkle.mp4?alt=media&token=2d8892f5-21a2-4444-9980-3c8645464ef0"
                        })
                        .padding()
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.13 Playalong 1h Slow")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.13%20Playalong%201h%20Slow.mp4?alt=media&token=9b9ebe73-f736-418b-b654-5e16619b05c4"
                        })
                        .padding()
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.13 Playalong 1h Medium")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.13%20Playalong%201h%20Medium.mp4?alt=media&token=2a19fb9e-9e88-4d5f-9588-5b1ecb58aaf3"
                        })
                        .padding()
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 1.13 Playalong 1h Fast")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.13%20Playalong%201h%20Fast.mp4?alt=media&token=e608e0b9-0098-4c60-a77f-383e5c3b798e"
                        })
                        .padding()
                        
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.13%20Twinkle%20Twinkle%20Little%20Star.pdf?alt=media&token=395b018e-2c8d-45bd-817d-0be58a363fe9")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("1.13 Reading Lesson 1h - Twinkle Twinkle Sheet Music")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
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
    Lesson_1(videoUrlAsString: .constant("https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/CMajScaleAndChordsEdited.mp4?alt=media&token=5c196198-0a29-4c22-a362-e5e555c7f65b"))
}
