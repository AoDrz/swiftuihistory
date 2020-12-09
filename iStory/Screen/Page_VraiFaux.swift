//
//  Page_VraiFaux.swift
//  iStory
//
//  Created by Boulanger Tim on 03/11/2020.
//

import SwiftUI



struct Page_VraiFaux: View {
    @State var score = 0
    @State var question : QuizVF = warQuiz
    @State var answerText = "Choisissez une réponse ..."
    @State var answerTextColor = Color.gray
    @State var nextText = ""
    @State var randomQuestion = Int.random(in: 0..<14)
    @State var randomQuestionSave = 0
    @State var colorAnswer = Color.gray
    @State var colorAnswer2 = Color.gray
    @State var scale = false
    @State var rotate = false
    
    var theQuestionTitle : QuestionVF {
        for questionTitle in question.questions {
            if questionTitle.numID == randomQuestion {
                return questionTitle
            }
        }
        return question.questions[0]
    }
    var theQuestionAnswers : AnswerVF {
        for questionAnswer in theQuestionTitle.answers {
            if questionAnswer.title == "Vrai" {
                return questionAnswer
            }
        }
        return theQuestionTitle.answers[0]
    }
    var theBadQuestionAnswers : AnswerVF {
        for questionAnswer in theQuestionTitle.answers {
            if questionAnswer.title == "Faux" {
                return questionAnswer
            }
            
        }
        return theQuestionTitle.answers[0]
    }
    
    func SuccessVerif (Score : Int){
        if Score >= 10 {
            profil[0].success["10 Score VF"] = true
        }
        if Score >= 20 {
            profil[0].success["20 Score VF"] = true
        }
        if Score >= 30 {
            profil[0].success["30 Score VF"] = true
        }
    }
    
    var body: some View {
        ZStack{
            VStack{
                
                HStack{
                    Spacer()
                    
                    Text("?")
                        .font(.largeTitle)
                        .bold()
                        .rotationEffect(.degrees(30))
                        .padding()
                        .rotationEffect(.degrees(rotate ? 0 :45))
                        .scaleEffect(scale ? 1 : 1/2)
                        .animation(Animation.easeInOut(duration: 2).repeatForever())
                    Spacer()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                }
                HStack{
                    Spacer()
                        .frame(width: 50, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("?")
                        .font(.largeTitle)
                        .bold()
                        .rotationEffect(.degrees(-50))
                        .padding()
                        .rotationEffect(.degrees(rotate ? 0 :45))
                        .scaleEffect(scale ? 2 : 1/2)
                        .animation(Animation.easeInOut(duration: 2).repeatForever().delay(3))
                    Spacer()
                }
                HStack{
                    Spacer()
                        .frame(width: 150, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("?")
                        .font(.largeTitle)
                        .bold()
                        .rotationEffect(.degrees(50))
                        .padding()
                        .rotationEffect(.degrees(rotate ? 0 :45))
                        .scaleEffect(scale ? 1 : 1/2)
                        .animation(Animation.easeInOut(duration: 2).repeatForever())
                    Spacer()
                    
                }
                HStack{
                    Spacer()
                    
                    Text("?")
                        .font(.largeTitle)
                        .bold()
                        .rotationEffect(.degrees(-45))
                        .padding()
                        .rotationEffect(.degrees(rotate ? 0 :45))
                        .scaleEffect(scale ? 1.5 : 1/2)
                        .animation(Animation.easeInOut(duration: 2).repeatForever())
                    Spacer()
                    
                }
                HStack{
                    Spacer()
                    
                    Text("?")
                        .font(.largeTitle)
                        .bold()
                        .rotationEffect(.degrees(30))
                        .padding()
                        .rotationEffect(.degrees(rotate ? 0 :45))
                        .scaleEffect(scale ? 1 : 1/2)
                        .animation(Animation.easeInOut(duration: 2).repeatForever().delay(3))
                    Spacer()
                        .frame(width: 50, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                HStack{
                    Spacer()
                        .frame(width: 110, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("?")
                        .font(.largeTitle)
                        .bold()
                        .rotationEffect(.degrees(-30))
                        .padding()
                        .rotationEffect(.degrees(rotate ? 0 :45))
                        .scaleEffect(scale ? 0.5 : 1/2)
                        .animation(Animation.easeInOut(duration: 2).repeatForever())
                    Spacer()
                    
                    Text("?")
                        .font(.largeTitle)
                        .bold()
                        .rotationEffect(.degrees(20))
                        .padding()
                        .rotationEffect(.degrees(rotate ? 0 :45))
                        .scaleEffect(scale ? 1 : 1/2)
                        .animation(Animation.easeInOut(duration: 2).repeatForever().delay(1))
                    Spacer()
                        .frame(width: 110, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                }
                HStack{
                    Spacer()
                        .frame(width: 70, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("?")
                        .font(.largeTitle)
                        .bold()
                        .rotationEffect(.degrees(-10))
                        .padding()
                        .rotationEffect(.degrees(rotate ? 0 :45))
                        .scaleEffect(scale ? 1.5 : 1/2)
                        .animation(Animation.easeInOut(duration: 2).repeatForever().delay(2))
                    Spacer()
                    Text("?")
                        .font(.largeTitle)
                        .bold()
                        .rotationEffect(.degrees(30))
                        .padding()
                        .rotationEffect(.degrees(rotate ? 0 :-45))
                        .scaleEffect(scale ? 2 : 1/2)
                        .animation(Animation.easeInOut(duration: 2).repeatForever().delay(2))
                    Spacer()
                        .frame(width: 70, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
            }.opacity(0.5)
            .onAppear(){
                self.rotate.toggle()
                self.scale.toggle()
            }
            
            VStack{
                Text("Score Actuel : \(score)")
                    .font(.title)
                    .bold()
                    .padding([.leading, .bottom, .trailing])
                    .padding(.top, 25.0)
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(height: 1.0)
                    .padding(20.0)
                Text(theQuestionTitle.title)
                    .font(.title)
                    .bold()
                    .padding(.horizontal, 25.0)
                Spacer()
                //reponse
                HStack{
                    Spacer()
                    Button(action: {
                        if nextText.isEmpty {
                            if theQuestionAnswers.isRight {
                                answerText = "Bien joué !"
                                answerTextColor = Color.green
                                colorAnswer = Color.green
                                colorAnswer2 = Color.red
                                score += 1
                                nextText = "Suivant"
                                if firstLogin {
                                    if score > profil[0].vfScore {
                                        profil[0].vfScore = score
                                    }
                                    SuccessVerif(Score: score)
                                }
                            } else {
                                answerText = "Dommage ..."
                                answerTextColor = Color.red
                                colorAnswer = Color.red
                                colorAnswer2 = Color.green
                                nextText = "Recommencer"
                                score = 0
                            }
                        }
                    }, label: {
                        Text(theQuestionAnswers.title)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width: 150, height: 100, alignment: .center)
                            .background(colorAnswer)
                            .cornerRadius(25)
                        
                        
                    })
                    Spacer()
                    Button(action: {
                        if nextText.isEmpty {
                            if theBadQuestionAnswers.isRight {
                                answerText = "Bien joué !"
                                answerTextColor = Color.green
                                colorAnswer = Color.red
                                colorAnswer2 = Color.green
                                score += 1
                                nextText = "Suivant"
                                if firstLogin {
                                    if score > profil[0].vfScore {
                                        profil[0].vfScore = score
                                    }
                                    SuccessVerif(Score: score)
                                }
                                
                            } else {
                                answerText = "Dommage ..."
                                answerTextColor = Color.red
                                colorAnswer = Color.green
                                colorAnswer2 = Color.red
                                nextText = "Recommencer"
                                score = 0
                            }
                        }
                    }, label: {
                        Text(theBadQuestionAnswers.title)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width: 150, height: 100, alignment: .center)
                            .background(colorAnswer2)
                            .cornerRadius(25)
                        
                        
                    })
                    Spacer()
                }
                // suite
                Spacer()
                
                Text(answerText)
                    .foregroundColor(answerTextColor)
                    .font(.title)
                    .padding()
                
                Button(action: {
                    randomQuestionSave = randomQuestion
                    randomQuestion = Int.random(in: 0..<14)
                    while randomQuestion == randomQuestionSave {
                        randomQuestion = Int.random(in: 0..<14)
                    }
                    nextText = ""
                    answerText = "Choisissez une réponse ..."
                    answerTextColor = Color.gray
                    colorAnswer = Color.gray
                    colorAnswer2 = Color.gray
                }, label: {
                    Text(nextText)
                        .padding()
                })
                Spacer()
                    .frame( height: 50 )
            }.navigationBarTitleDisplayMode(.inline)
            .navigationBarTitle("Vrai ou Faux", displayMode: .inline)
        }
    }
}



struct Page_VraiFaux_Previews: PreviewProvider {
    static var previews: some View {
        Page_VraiFaux()
    }
}

