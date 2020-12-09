//
//  Page_Profil.swift
//  iStory
//
//  Created by Boulanger Tim on 03/11/2020.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)


struct Badge : View {
    var tableau : [String : Bool]
    var success : String
    var body: some View {
        VStack {
            switch success{
            case "Quiz" :
                if tableau["30 Score Quiz"] == true{
                    Image("badge or")
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                } else if tableau["20 Score Quiz"] == true {
                    Image("badge argent")
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                } else if tableau["10 Score Quiz"] == true {
                    Image("badge bronze")
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                } else {
                    Image("badge 0")
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                }
            case "Vrai/Faux" :
                if tableau["30 Score VF"] == true{
                    Image("badge or")
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                } else if tableau["20 Score VF"] == true {
                    Image("badge argent")
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                } else if tableau["10 Score VF"] == true {
                    Image("badge bronze")
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                } else {
                    Image("badge 0")
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                }
            case "Fait Vu" :
                if tableau["100 Fait Vu"] == true{
                    Image("badge or2")
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                } else if tableau["60 Fait Vu"] == true {
                    Image("badge argent2")
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                } else if tableau["30 Fait Vu"] == true {
                    Image("badge bronze2")
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                } else {
                    Image("badge 0")
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                }
            case "Insolite Vu" :
                if tableau["100 Insolite Vu"] == true{
                    Image("badge or2")
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                } else if tableau["60 Insolite Vu"] == true {
                    Image("badge argent2")
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                } else if tableau["30 Insolite Vu"] == true {
                    Image("badge bronze2")
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                } else {
                    Image("badge 0")
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                }
            default:
                Text("ERROR")
            }
            Text(success)
                .font(.title3)
                .fontWeight(.semibold)
        }
    }
    
}


struct Page_Profil: View {
    @State var refresh: Bool = false
    @State var newUserName: String = ""
    @State var editUserName: Bool = false
    @State var defaultUserName: String = "Seng"
    var body: some View {
        ScrollView{
            ZStack{
                Color.white
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                ForEach(profil, id: \.userName) { theprofil in
                    VStack {
                        Image("Seng")
                            .resizable()
                            .frame(width: 120.0, height: 120.0)
                            .cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                        Button(action: {
                            if editUserName == false {
                                editUserName = true
                            }
                        }, label: {
                            if editUserName {
                                HStack(alignment: .center){
                                    Button(action: {
                                        editUserName = false
                                        if newUserName.isEmpty {
                                            profil[0].userName = defaultUserName
                                        } else {
                                            profil[0].userName = newUserName
                                            defaultUserName = newUserName
                                        }
                                        
                                    }, label: {
                                        Image(systemName: "pencil.circle")
                                            .resizable()
                                            .frame(width: 25.0, height: 25.0)
                                            .foregroundColor(.blue)
                                    })
                                    TextField(theprofil.userName, text: $newUserName)
                                        .font(Font.system(size: 30, design: .default))
                                        .foregroundColor(.black)
                                        .frame(width: 150.0, height: 50.0)
                                    
                                    
                                }
                            } else {
                                HStack(alignment: .center){
                                    Image(systemName: "pencil.circle")
                                        .resizable()
                                        .frame(width: 25.0, height: 25.0)
                                        .foregroundColor(.black)
                                    Text(theprofil.userName)
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                }
                                
                            }
                        })
                        
                        Rectangle()
                            .frame(height: 1.0)
                            .padding(.horizontal, 18.0)
                            .foregroundColor(.gray)
                        Text("Stats")
                            .font(.title)
                            .fontWeight(.medium)
                        ZStack{
                            if refresh {
                                List{
                                    Text("Meilleur Score Quiz : \(theprofil.quizScore)")
                                    Text("Meilleur Score Vrai/Faux : \(theprofil.vfScore)")
                                    Text("Nombres de Fait Vu : \(theprofil.nbFactView)")
                                    Text("Nombres de Fait Insolite Vu : \(theprofil.nbFunnyView)")
                                }.padding([.top], 0.0)
                                .padding(.leading, 10.0)
                                .padding(.trailing, 30.0)
                                .frame(height: 170.0)
                            }else {
                                List{
                                    Text("Meilleur Score Quiz : \(theprofil.quizScore)")
                                    Text("Meilleur Score Vrai/Faux : \(theprofil.vfScore)")
                                    Text("Nombres de Fait Vu : \(theprofil.nbFactView)")
                                    Text("Nombres de Fait Insolite Vu : \(theprofil.nbFunnyView)")
                                }.padding([.top], 0.0)
                                .padding(.leading, 10.0)
                                .padding(.trailing, 30.0)
                                .frame(height: 170.0)
                            }
                            
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .stroke(Color.black, lineWidth: 2)
                                .padding(.horizontal)
                                .frame(height: 180.0)
                            
                            
                            
                        }
                        
                        .frame(height: 200.0)
                        Text("Succès")
                            .font(.title)
                            .fontWeight(.medium)
                        ZStack{
                            VStack{
                                ScrollView (.horizontal, showsIndicators: false) {
                                    HStack{
                                        Badge(tableau: theprofil.success, success: "Quiz")
                                        Badge(tableau: theprofil.success, success: "Vrai/Faux")
                                        Badge(tableau: theprofil.success, success: "Fait Vu")
                                        Badge(tableau: theprofil.success, success: "Insolite Vu")
                                        
                                    }
                                }.padding(.horizontal, 20.0)
                                
                            }
                            
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .stroke(Color.black, lineWidth: 2)
                                .padding(.horizontal)
                            
                            
                            
                        }.padding(.bottom, 18.0)
                        .frame(height: 200.0)
                        
                    }
                    
                }.navigationBarHidden(true)
                .onAppear(perform: {
                    refresh.toggle()
                    firstLogin = true
                    
                })
            }
        }
    }
}



struct Page_Profil_Previews: PreviewProvider {
    static var previews: some View {
        Page_Profil()
    }
}
