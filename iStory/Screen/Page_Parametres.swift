//
//  Page_Parametres.swift
//  iStory
//
//  Created by Boulanger Tim on 03/11/2020.
//

import SwiftUI
struct Page_Parametres: View {
    @State var newUserName2 : String = ""
    var ProfilVar : Profil {
        for profilvar in profil {
            if profilvar.userName == "Seng"{
                return profilvar
            }
        }
        return profil[0]
    }
    var body: some View {
        NavigationView{
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        VStack{
            Image(systemName: "gearshape")
                .resizable()
                .frame(width: 150.0, height: 150.0)
                .padding()
            Spacer()
                .frame(height: 50.0)
            Spacer()
                .frame(height: 20.0)
            Text("Paramètre du compte")
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            
            
            
            
        }
        
        }
        }.navigationBarHidden(true)
    }
}

struct Page_Parametres_Previews: PreviewProvider {
    static var previews: some View {
        Page_Parametres()
    }
}
