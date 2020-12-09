//
//  TabBar.swift
//  iStory
//
//  Created by Boulanger Tim on 03/11/2020.
//

import SwiftUI

struct tabbar: View {
    var body: some View {
        TabView{
            Page_Accueil()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("iStory")
                }
            
            
            // 2eme element
            Page_Categories()
                .tabItem {
                    Image(systemName: "gamecontroller.fill")
                    Text("Multimédia")
                }
            
            // 3eme element
            Login()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profil")
                }
        }
        .accentColor(.blue)
        .onAppear() {
            UITabBar.appearance().barTintColor = .black
        }.navigationBarHidden(true)
        
    }
}


struct tabbar_Previews: PreviewProvider {
    static var previews: some View {
        tabbar()
    }
}
