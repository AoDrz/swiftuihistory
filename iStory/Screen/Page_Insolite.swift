//
//  Page_Insolite.swift
//  iStory
//
//  Created by Boulanger Tim on 03/11/2020.
//

import SwiftUI

struct Page_Insolite: View {
    @State var randomInt = Int.random(in: 0..<26)
    @State var unColor : Color = .blue
    @State var randomisation = 0
    @State var saveNumber = 0
    @State var insoliteVu = 1
    func SuccessVerif (Score : Int){
        if Score >= 30 {
            profil[0].success["30 Insolite Vu"] = true
        }
        if Score >= 60 {
            profil[0].success["60 Insolite Vu"] = true
        }
        if Score >= 100 {
            profil[0].success["100 Insolite Vu"] = true
        }
    }
    
    var body: some View {
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ForEach(funnystory, id: \.id) { funnystory in
                if funnystory.id == randomInt {
                    VStack{
                        Text(funnystory.title)
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding()
                        Rectangle()
                            .frame(height: 1.0)
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                        ScrollView{
                            Text(funnystory.funfact)
                                .font(.headline)
                                .fontWeight(.medium)
                                .padding([.top, .leading, .trailing])
                        }
                        Spacer()
                        ZStack{
                            Image(funnystory.imageLink)
                                .resizable()
                                .frame(height: 220.0)
                                .cornerRadius(25)
                                .padding(.horizontal)
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .stroke(Color.black,lineWidth: 3)
                                .frame(height: 220.0)
                                .padding(.horizontal)
                        }
                        Spacer()
                            .frame(height: 80.0)
                        
                        Button(action: {
                            insoliteVu += 1
                            if firstLogin {
                                profil[0].nbFunnyView = insoliteVu
                                SuccessVerif(Score: insoliteVu)
                            }
                            randomInt = Int.random(in: 0..<26)
                            while randomInt == funnystory.id {
                                randomInt = Int.random(in: 0..<26)
                            }
                            randomisation = Int.random(in:0..<5)
                            while saveNumber == randomisation {
                                randomisation = Int.random(in:0..<5)
                            }
                            saveNumber = randomisation
                            switch randomisation {
                            case 0:
                                unColor = Color.orange
                            case 1:
                                unColor = Color.red
                            case 2:
                                unColor = Color.green
                            case 3:
                                unColor = Color.purple
                            case 4:
                                unColor = Color.yellow
                            default:
                                unColor = Color.blue
                            }
                        }, label: {
                            Image(systemName: "magnifyingglass.circle.fill")
                                .resizable()
                                .frame(width: 70.0, height: 70.0)
                                .foregroundColor(unColor)
                                .padding(.bottom, 15.0)
                        }).navigationBarTitleDisplayMode(.inline)
                        .navigationBarTitle("Insolite", displayMode: .inline)
                        
                    }
                    
                }
            }
        }
    }
}

struct Page_Insolite_Previews: PreviewProvider {
    static var previews: some View {
        Page_Insolite()
    }
}
