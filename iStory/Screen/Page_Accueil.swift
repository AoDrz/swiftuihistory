//
//  Page_Accueil.swift
//  iStory
//
//  Created by Boulanger Tim on 03/11/2020.
//

import SwiftUI


struct MaModale : View {
    @Binding var displayMyModale : Bool
    var faitHistoire : Fait
    
    var body: some View {
        VStack{
            HStack{
                Button(action: { self.displayMyModale.toggle() }, label: {
                    Image(systemName: "arrowshape.turn.up.left.circle.fill")
                        .resizable()
                        .padding()
                        .frame(width: 70.0, height: 70.0)
                        .foregroundColor(.black)
                })
                Spacer()
                
            }
            Spacer()
            ScrollView{
                Text(faitHistoire.faitdetail)
                    .font(.title)
                    .fontWeight(.light)
                    .padding()
            }
            
            
            Spacer()
            VStack{
                Button(action: {
                    
                    self.displayMyModale.toggle()
                    UIApplication.shared.open(URL(string: faitHistoire.link)!)
                    
                }, label: {
                    VStack{
                        Image(systemName: "link.circle")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(.black)
                        Text("Lien Source")
                            .fontWeight(.light)
                            .foregroundColor(.gray)
                    }
                })
                
            }
            Spacer()
        }.onAppear(perform: {
            profil[0].nbFactView += 1
        })
        
    }
    
}



struct Page_Accueil: View {
    @State var displayMyModale : Bool = false
    @State var favoris : Bool = false
    let today = Date()
    let formatter1 : DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM"
        
        return formatter
    }()
    var factVar : Fait {
        for histoire in histoires {
            if histoire.date == formatter1.string(from: today){
                return histoire
            }
        }
        return histoires[0]
    }
    
    @Environment(\.openURL) var openURL
    
    var body: some View {
        
        
        
        NavigationView(content: {
            ZStack{
                Color.white
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack{
                    HStack{
                        NavigationLink(
                            destination: Page_Calendrier(),
                            label: {
                                Image(systemName: "list.star")
                                    .resizable()
                                    .frame(width: 60.0, height: 50.0)
                                    .foregroundColor(.black)
                                    .padding()
                            })
                        
                        
                        
                        Spacer()
                        Button(action: {
                            if favoris == false{
                                favoris = true
                                histoires[factVar.intID].fav = true
                            } else {
                                favoris = false
                                histoires[factVar.intID].fav = false
                            }
                            
                        }, label: {
                            if favoris == false {
                                Image(systemName: "star")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(.black)
                                    .padding()
                            } else {
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(.yellow)
                                    .padding()
                            }
                        })
                    }
                    
                    Spacer()
                    Text(factVar.faitext)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    Spacer()
                    VStack{
                        Button(action: {
                            self.displayMyModale = true
                        }, label: {
                            Image(systemName: "info.circle")
                                .resizable()
                                .frame(width: 70.0, height: 70.0)
                                .foregroundColor(.black)
                        })
                        .sheet(isPresented: $displayMyModale, content: {
                            MaModale(displayMyModale: $displayMyModale, faitHistoire : factVar)
                        })
                        Text("Plus de détails")
                            .fontWeight(.light)
                            .foregroundColor(.gray)
                    }.padding()
                    
                    
                    
                    Spacer()
                    
                    
                }
            }
            .navigationBarHidden(true)
            
        }).navigationBarHidden(true)
        
        
        
    }
    
}


struct Page_Accueil_Previews: PreviewProvider {
    static var previews: some View {
        Page_Accueil()
        
    }
}
