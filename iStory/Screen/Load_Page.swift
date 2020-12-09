//
//  Load_Page.swift
//  iStory
//
//  Created by Boulanger Tim on 04/11/2020.
//

import SwiftUI

struct Load_Page: View {
    @State var appeared: Double = 0.0
    var body: some View {
        NavigationView{
            
            NavigationLink(
                destination: tabbar() ,
                label: {
                    ZStack{
                        RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 2, endRadius: 650)
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        VStack{
                            Image("logo")
                                .resizable()
                                .frame(width: 250.0, height: 250.0)
                            Text("Appuyer pour continuer ...")
                                .foregroundColor(Color.black)
                                .opacity(0.5)
                        }
                        
                    }
                }).navigationBarHidden(true)
            
        }
        .opacity(appeared)
        .animation(Animation.easeInOut(duration: 3.0), value: appeared)
        .onAppear {self.appeared = 1.0}
        .onDisappear {self.appeared = 0.0}
        
        
    }
}

struct Load_Page_Previews: PreviewProvider {
    static var previews: some View {
        Load_Page()
    }
}
