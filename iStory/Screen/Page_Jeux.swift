//
//  Page_Jeux.swift
//  iStory
//
//  Created by Boulanger Tim on 03/11/2020.
//

import SwiftUI

struct LeftCorner: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 50, height: 50))
        return path
    }
}

struct NavigationConfigurator: UIViewControllerRepresentable {
    var configure: (UINavigationController) -> Void = { _ in }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
        UIViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let nc = uiViewController.navigationController {
            self.configure(nc)
        }
    }
    
}

struct Page_Jeux: View {
    
    
    var body: some View {
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Image(systemName: "gamecontroller.fill")
                    .resizable()
                    .frame(width: 180.0, height: 120.0)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.blue)
                Spacer()
                    .frame(height: 100.0)
                NavigationLink(
                    destination: Page_Quiz(),
                    label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 60)
                                .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.gray)
                            //  Image(systemName: "info.circle.fill")
                            LeftCorner()
                                .trim(from: 0.41, to: 0.59)
                                .foregroundColor(.purple)
                                .frame(width: 300, height: 100)
                            Text("Quiz")
                                .font(.system(size: 50))
                                .fontWeight(.medium)
                                .foregroundColor(Color.black)
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/2.0/*@END_MENU_TOKEN@*/)
                        }
                    })
                Spacer()
                    .frame(height: 80.0)
                NavigationLink(
                    destination: Page_VraiFaux(),
                    label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 60)
                                .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.gray)
                            //  Image(systemName: "info.circle.fill")
                            LeftCorner()
                                .trim(from: 0.41, to: 0.59)
                                .foregroundColor(.green)
                                .frame(width: 300, height: 100)
                            Text("Vrai/Faux")
                                .font(.system(size: 50))
                                .fontWeight(.medium)
                                .foregroundColor(Color.black)
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/2.0/*@END_MENU_TOKEN@*/)
                        }
                    })
                Spacer()
                
            }.navigationBarTitleDisplayMode(.inline)
            .navigationBarTitle("Jeux", displayMode: .inline)
            .padding()
        }
        
        
    }
}

struct Page_Jeux_Previews: PreviewProvider {
    static var previews: some View {
        Page_Jeux()
    }
}
