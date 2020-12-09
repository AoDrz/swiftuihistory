//
//  Page_Videos.swift
//  iStory
//
//  Created by Boulanger Tim on 03/11/2020.
//

import SwiftUI
import AVKit

struct Page_Videos: View {
    @State var researchVideo : String = ""
    @State var playersearch : String = ""
    @State  var player : AVPlayer = AVPlayer(url:  Bundle.main.url(forResource: "theatre" , withExtension: "mp4")!)
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                HStack{
                    Image(systemName: "magnifyingglass.circle.fill")
                        .resizable()
                        .frame(width: 50.0, height: 50.0)
                        .padding([.top, .leading, .bottom])
                    ZStack{
                        TextField("  Entrer votre recherche ...", text: $researchVideo)
                            .padding(10.0)
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .stroke(Color.black, lineWidth: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                            .frame(height: 50.0)
                            .padding(5.0)
                    }
                    
                }
                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .stroke(Color.black, lineWidth: 4.0)
                        .frame(height: 203.0)
                        .padding(.horizontal, 7.5)
                    VideoPlayer(player: player)
                        .cornerRadius(25.0)
                        .frame(height: 200.0)
                        .padding(.horizontal, 8.0)
                        .onDisappear() {
                            // Stop the player when the view disappears
                            player.pause()
                        }
                }
                List() {
                    Section(header: researchVideo.isEmpty ? Text("Entrer votre recherche ...") : Text("\(researchVideo)"))
                    {
                        ForEach(factVideos, id: \.Title) { video in
                            if video.Title.lowercased().contains(researchVideo.lowercased()) && researchVideo != ""{
                                HStack{
                                    Text(video.Title)
                                    Spacer()
                                    Button(action: {
                                        player.pause()
                                        player = AVPlayer(url:  Bundle.main.url(forResource: video.Link , withExtension: "mp4")!)
                                        
                                        player.play()
                                    }, label: {
                                        ZStack {
                                            Rectangle()
                                                .cornerRadius(10.0)
                                                .frame(width: 70.0, height: 30.0)
                                                .foregroundColor(.red)
                                            Text("Lecture")
                                                .foregroundColor(.black)
                                        }
                                        
                                    })
                                    
                                }.frame(height: 55.0)
                            }
                            if researchVideo.isEmpty {
                                HStack{
                                    Text(video.Title)
                                    Spacer()
                                    Button(action: {
                                        player.pause()
                                        player = AVPlayer(url:  Bundle.main.url(forResource: video.Link , withExtension: "mp4")!)
                                        
                                        player.play()
                                    }, label: {
                                        ZStack {
                                            Rectangle()
                                                .cornerRadius(10.0)
                                                .frame(width: 70.0, height: 30.0)
                                                .foregroundColor(.red)
                                            Text("Lecture")
                                                .foregroundColor(.black)
                                        }
                                        
                                    })
                                    
                                }.frame(height: 55.0)
                                
                            }
                        }
                    }
                    
                    
                }.listStyle(GroupedListStyle())
                
                Spacer()
            }
        }.navigationBarTitleDisplayMode(.inline)
        .navigationBarTitle("Vidéos", displayMode: .inline)
    }
}

struct Page_Videos_Previews: PreviewProvider {
    static var previews: some View {
        Page_Videos()
    }
}
