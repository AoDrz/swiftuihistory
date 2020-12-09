//
//  Page_Calendrier.swift
//  iStory
//
//  Created by Boulanger Tim on 03/11/2020.
//

import SwiftUI

struct MaModaleCalendrier : View {
    @Binding var displayMyModaleCalendrier : Bool
    var faitHistoire : Fait
    var dateFait : String = "00-00"
    var body: some View {
        VStack{
            HStack{
                Button(action: { self.displayMyModaleCalendrier.toggle() }, label: {
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
                    
                    self.displayMyModaleCalendrier.toggle()
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
        }
        
    }
    
}

struct Page_Calendrier: View {
    @State var displayMyModaleCalendrier : Bool = false
    @State var touch : Bool = false
    @State var touchFact : String = "11-03"
    @State var theTouchFact : Fait = histoires[0]
    var body: some View {
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ZStack{
                List() {
                    ForEach(histoires, id: \.id) { histoire in
                        if histoire.fav{
                            
                            Section(header: Text(histoire.date)
                                        .font(.title)
                                        .foregroundColor(.blue)
                                        .bold())
                            {
                                Button(action: {
                                    self.displayMyModaleCalendrier = true
                                }, label: {
                                    VStack {
                                        Text(histoire.faitext)
                                            .foregroundColor(.black)
                                        HStack{
                                            Spacer()
                                            Text("Détails...")
                                                .foregroundColor(Color.gray)
                                                .padding(.trailing, 5.0)
                                        }
                                        
                                    }
                                    
                                })
                                .sheet(isPresented: $displayMyModaleCalendrier, content: {
                                    MaModaleCalendrier(displayMyModaleCalendrier: $displayMyModaleCalendrier, faitHistoire : histoire)
                                })
                            }
                        }
                    }
                }.navigationBarTitle("Mes Favoris", displayMode: .large)
                .listStyle(InsetGroupedListStyle())
            }
            Spacer()
        }.navigationBarTitleDisplayMode(.inline)
    }
}

struct ListHeader: View {
    var body: some View {
        HStack {
            Image(systemName: "map")
            Text("Hiking Trails in Silicon Valley")
        }
    }
}

struct Page_Calendrier_Previews: PreviewProvider {
    static var previews: some View {
        Page_Calendrier()
    }
}
