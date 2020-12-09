//
//  Login_Page.swift
//  iStory
//
//  Created by Boulanger Tim on 12/11/2020.
//

import SwiftUI

var firstLogin: Bool = false

struct Login : View {
    
    @State var password : String = ""
    @State var userName : String = ""
    @State var goodPassword : String = "password"
    @State var wrongPasswordMessage: String = ""
    var body: some View {
        if password == goodPassword && firstLogin {
            Page_Profil()
        }
        NavigationView {
            VStack {
                Spacer()
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 120.0, height: 120.0)
                    .cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                Spacer()
                TextField("Nom d'utilisateur", text: $userName)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.horizontal, 20)
                SecureField("Mot de passe", text: $password)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.horizontal, 20)
                Spacer()
                Text(wrongPasswordMessage)
                    .foregroundColor(.red)
                if password == goodPassword && userName.lowercased() == profil[0].userName.lowercased() {
                    NavigationLink(destination: Page_Profil()) {
                        Text("Se connecter")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 220, height: 60)
                            .background(Color.green)
                            .cornerRadius(15.0)
                    }
                } else {
                    Button(action: {
                        if userName.lowercased() == profil[0].userName.lowercased() {
                            if password != goodPassword {
                                wrongPasswordMessage = "Mauvais mot de passe"
                            }
                        } else {
                            wrongPasswordMessage = "Nom d'utilisateur Inconnu"
                        }
                        
                    }, label: {
                        
                        Text("Se connecter")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 220, height: 60)
                            .background(Color.green)
                            .cornerRadius(15.0)
                    })
                }
                
                Spacer()
            }.navigationBarHidden(true)
            
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
