//
//  Page_Categories.swift
//  iStory
//
//  Created by Boulanger Tim on 03/11/2020.
//

import SwiftUI

struct Page_Categories: View {
    var body: some View {
        
        NavigationView(content: {
            ZStack{
                Color.white
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack{
                    Spacer()
                    NavigationLink(
                        destination: Page_Jeux(),
                        label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 60)
                                    .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.gray)
                                //  Image(systemName: "info.circle.fill")
                                LeftCorner()
                                    .trim(from: 0.41, to: 0.59)
                                    .foregroundColor(.blue)
                                    .frame(width: 300, height: 100)
                                Text("Jeux")
                                    .font(.system(size: 50))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.black)
                                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/2.0/*@END_MENU_TOKEN@*/)
                            }
                        })
                    Spacer()
                        .frame(height: 80.0)
                    NavigationLink(
                        destination: Page_Insolite(),
                        label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 60)
                                    .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.gray)
                                //  Image(systemName: "info.circle.fill")
                                LeftCorner()
                                    .trim(from: 0.41, to: 0.59)
                                    .foregroundColor(.orange)
                                    .frame(width: 300, height: 100)
                                Text("Insolite")
                                    .font(.system(size: 50))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.black)
                                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/2.0/*@END_MENU_TOKEN@*/)
                            }
                        })
                    Spacer()
                        .frame(height: 80.0)
                    NavigationLink(
                        destination: Page_Videos(),
                        label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 60)
                                    .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.gray)
                                //  Image(systemName: "info.circle.fill")
                                LeftCorner()
                                    .trim(from: 0.41, to: 0.59)
                                    .foregroundColor(.red)
                                    .frame(width: 300, height: 100)
                                Text("Vidéos")
                                    .font(.system(size: 50))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.black)
                                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/2.0/*@END_MENU_TOKEN@*/)
                            }
                        })
                    Spacer()
                    
                }
            }.navigationBarHidden(true)
            
        })
        .navigationBarHidden(true)
        
    }
}

struct Page_Categories_Previews: PreviewProvider {
    static var previews: some View {
        Page_Categories()
    }
}
