//
//  Lesson_3.swift
//  Online Piano Lessons
//
//  Created by Brian Mahne on 5/15/24.
//

import SwiftUI

struct Lesson_3: View {
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
                                Text(" Coming Soon 3.00: Lesson 3 Guide Notes")
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
                       // }
                        //simultaneously sets the url for viewer when link is clicked
                        //.simultaneousGesture(TapGesture().onEnded {
                        //    videoUrlAsString = ""
                       // })
                        
                        Divider()
                            .overlay(.white)
                    }
                    .padding()
                    
                    
                    //begin 3.01 lesson links
                    
                    VStack() {
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 3.01a: A Minor Scale and Chords")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("3.01a_Still")
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
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.01%20A%20Minor%20Scales%20and%20Chords.mp4?alt=media&token=26beff48-8c9c-4822-9ce2-ce727e2730f7"
                        })
                        .lessonChecklistItem(id: "lesson-video-a3745e83ea6a469150d4")
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.01%20A%20Minor%20Scales%20and%20Chords.pdf?alt=media&token=f48bf8ea-9a87-476c-8e7d-665a325ac945")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("3.01a: A Minor Scale and Chords Handout")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        Spacer()
                            .frame(height: 30)
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 3.01b: C Minor Scale and Chords")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("3.01b_Still")
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
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.01%20C%20Minor%20and%20Relative%20vs%20Parallel.mp4?alt=media&token=48227d8e-8dd2-40af-ad1e-3d4e773fa3fd"
                        })
                        .lessonChecklistItem(id: "lesson-video-a836145f3a3a924c842f")
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.01%20C%20Minor%20Scales%20and%20Chords.pdf?alt=media&token=5f0de6b8-1835-4d4c-8ddb-3733f07c6062")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("3.01b: C Minor Scale and Chords Handout")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                                .padding()
                        })
                        Divider()
                            .overlay(.white)
                        
                        
                    }
                    .padding()
                    
                    
                    //3.02
                    
                    VStack() {
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 3.02: Reading Lesson 3a")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("3.02_Still")
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
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.02%20Lesson%203a%20Beethovens%205th.mp4?alt=media&token=eabff22e-2338-4ad5-bbc4-d852d5705925"
                        })
                        .lessonChecklistItem(id: "lesson-video-8cde05100b8e27044cc3")
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.02%20Lesson%203a%20Beethovens%205th.pdf?alt=media&token=9daa7a13-f0be-4d14-abfd-563506429b7a")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("3.02: Reading Lesson 3a Sheet Music")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 3.02: Playalong 3a - Slow")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                             
                            
                            }
                            .padding()
                        }
                        
                        //simultaneously sets the url for viewer when link is clicked
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.02%20%20Playalong%203a%20Beethoven%20Slow.mp4?alt=media&token=960fbb32-73b6-49dd-bb50-b421cab3cea6"
                        })
                        .lessonChecklistItem(id: "lesson-video-638b19d3249e2178c47b")
                        Divider()
                            .overlay(.white)
                        
                        
                    }
                    .padding()
                    
                    
                    //3.03
                    VStack() {
                        
                        Text("3.03 Inversions")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 3.03a: A Minor Inversions")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("3.03a_Still")
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
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.03%20A%20minor%20Triad%20Inversions.mov?alt=media&token=37d14eff-b722-4110-9a96-440146c5231c"
                        })
                        .lessonChecklistItem(id: "lesson-video-6826e99ca1356d672bfc")
                        Spacer()
                            .frame(height: 40)
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 3.03b: C Major Inversions")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("3.03b_Still")
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
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.03%20C%20Major%20Triad%20Inversions.mov?alt=media&token=4f7cef40-2329-42db-b435-455c0721d599"
                        })
                        .lessonChecklistItem(id: "lesson-video-0a1355237c8b610a7507")
                        Spacer()
                            .frame(height: 40)
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 3.03c: F Major Inversions")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("3.03c_Still")
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
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.03%20F%20Major%20Triad%20Inversions.mov?alt=media&token=c8e5198f-50ae-4c48-be1b-923acf26640a"
                        })
                        .lessonChecklistItem(id: "lesson-video-7d543fc1b54ea439fcf3")
                        Spacer()
                            .frame(height: 40)
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 3.03d: G Major Inversions")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("3.03d_Still")
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
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.03%20G%20Major%20Triad%20Inversions.mov?alt=media&token=dcab2ab2-6a6d-4b1e-90f4-ad2fd557acb6"
                        })
                        .lessonChecklistItem(id: "lesson-video-e8ee65ee1ae3f4729179")
                        Spacer()
                            .frame(height: 40)
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.03%20Lesson%203b%20Inversions%20for%20C%20G%20F%20Am.pdf?alt=media&token=d469acf7-d84e-4997-b783-dd8d258e0053")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("3.03: Lesson 3b Inversions Handout")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        Divider()
                            .overlay(.white)
                        
                        
                    }
                    .padding()
                    
                    
                    //3.04
                    VStack() {
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 3.04: Lesson 3c Sustain Pedal")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("3.04_Still")
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
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.04%20Lesson%203c%20Sustain%20Pedal.mp4?alt=media&token=d13c593b-b91d-4772-980b-37a3db377dfe"
                        })
                        .lessonChecklistItem(id: "lesson-video-db163a52419ee6410fee")
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.04%20Lesson%203c%20Sustain%20Pedal.pdf?alt=media&token=1d516770-cf99-492e-ad88-c3b4186089ec")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("3.04: Lesson 3c Sustain Pedal Sheet Music")
                                .font(.title2)
                                .foregroundStyle(Color.white)
                                .italic()
                        })
                        .padding()
                        Divider()
                            .overlay(.white)
                    }
                    .padding()
                    
                    
                    
                    //3.05 links
                    
                    VStack() {
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 3.05 A Minor Piece")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("3.05_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    
                                    .shadow(radius: 10, y: 10)
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.05%20A%20minor%20piece%20with%20sustain.mp4?alt=media&token=d110de4b-2625-4e85-9cb4-25b681bf07e1"
                        })
                        .lessonChecklistItem(id: "lesson-video-bf8b81beea3e50acf94f")
                        
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.03%20C%20Major%20Scale%20and%20Primary%20Chords.pdf?alt=media&token=f69e9bb5-436d-4c36-91ff-51ede01cdc74")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("3.05 A Minor Piece Handout")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        
                        Divider()
                            .overlay(.white)
                        
                    }
                    
                    .padding()
                    
                    
                    
                    //3.06 links
                    
                    VStack() {
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 3.06 Choppin with Chopin")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("3.06_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    
                                    .shadow(radius: 10, y: 10)
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.06%20Choppin%20with%20Chopin.mp4?alt=media&token=96df3401-9f41-4980-ae6c-9a7fa28b1ac8"
                        })
                        .lessonChecklistItem(id: "lesson-video-f0cf3d37fec121d67336")
                        
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.06%20Choppin%20with%20Chopin.pdf?alt=media&token=db1550eb-4ad9-48af-adc3-9375836c3e9a")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("3.06 Choppin with Chopin Sheet Music")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        
                        Divider()
                            .overlay(.white)
                        
                    }
                    
                    .padding()
                    
                    //3.07 links
                    
                    VStack() {
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 3.07 Lesson 3f - Magical World")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("3.07_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    
                                    .shadow(radius: 10, y: 10)
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.07%20Magical%20World.mp4?alt=media&token=3d608bac-14ab-4459-be9f-b3eacd236016"
                        })
                        .lessonChecklistItem(id: "lesson-video-3be579f46b20431a12a2")
                        
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.07%20Lesson%203f%20-%20Magical%20World%20-%20dc%20al%20fine%20-%20Reading.pdf?alt=media&token=7bd86585-512a-46a7-9c4c-fb67f8dbdc0f")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("3.07 Magical World")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        
                        Divider()
                            .overlay(.white)
                        
                    }
                    
                    .padding()
                    
                    
                    //3.08 links
                    VStack() {
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 3.08 Ear Training")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("3.08_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    
                                    .shadow(radius: 10, y: 10)
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.08%20Ear%20Training.mp4?alt=media&token=c67f7ff3-3e42-4ff1-9167-0c32b9a9cce1"
                        })
                        .lessonChecklistItem(id: "lesson-video-f9b571ee38b32c30ad42")
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.08%20Ear%20Training.pdf?alt=media&token=41372596-cbd2-46a3-96af-9397f52b62be")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("3.08 Ear Training Handout")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                       
                        
                        Divider()
                            .overlay(.white)
                        
                    }
                    
                    .padding()
                    
                    
                    
                    //3.09 Links
                    
                    VStack() {
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 3.09 Voice Leading - 4 Chords 3 Ways - Key of C")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("3.09_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    
                                    .shadow(radius: 10, y: 10)
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.09%20Improv%20-%20Voice%20Leading%20-%20Pentatonic.mp4?alt=media&token=7af51a42-104f-4c98-8556-a88b9f71d1ff"
                        })
                        .lessonChecklistItem(id: "lesson-video-c65962fa6867a877c581")
                        
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.09%20Voice%20Leading.pdf?alt=media&token=25a50875-1f5d-4fee-8b57-9c7e521ee6cd")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("3.09 Voice Leading - Handout")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        
                        Divider()
                            .overlay(.white)
                        
                    }
                    
                    .padding()
                    
                    //3.10 Links
                    
                    VStack() {
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 3.10 A Major Scale and Primary Chords")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("3.10_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    
                                    .shadow(radius: 10, y: 10)
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/AmajScaleAndChordsEdited.mp4?alt=media&token=70bdf68b-7b41-4f2f-b0b6-cbcbea0202c2"
                        })
                        .lessonChecklistItem(id: "lesson-video-abda1e1abab07b626875")
                        
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.09%20Voice%20Leading.pdf?alt=media&token=25a50875-1f5d-4fee-8b57-9c7e521ee6cd")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("3.10 A Major Handout")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        
                        Divider()
                            .overlay(.white)
                        
                    }
                    
                    .padding()
                    
                    
                    //3.11
                    
                    VStack() {
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack() {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white) +
                                Text(" 3.11 Waltz in A")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                                Image("3.11_Still")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    
                                    .shadow(radius: 10, y: 10)
                            }
                            .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.11%20Waltz%20in%20A.mp4?alt=media&token=26110c35-9551-4a0a-8c5f-07d92171ecf2"
                        })
                        .lessonChecklistItem(id: "lesson-video-d152988c5ef1b13ed571")
                        
                        
                        Link(destination: URL(string: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%203%2F3.11%20Waltz%20in%20A.pdf?alt=media&token=e6c9c969-0772-4e39-87ec-94cde609ba99")!, label: {
                            Image("PDF")
                                .resizable()
                                .frame(width: 30, height: 40)
                            Text("3.11 Waltz in A Sheet Music")
                                .font(.title2)
                                .italic()
                                .foregroundStyle(Color.white)
                        })
                        .padding()
                        
                        Divider()
                            .overlay(.white)
                        
                    }
                    
                    .padding()
                    
                    
                }
            }
            .background(Image("Background"))
        }
    }
}

#Preview {
    Lesson_3(videoUrlAsString: .constant("https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/CMajScaleAndChordsEdited.mp4?alt=media&token=5c196198-0a29-4c22-a362-e5e555c7f65b"))
}
