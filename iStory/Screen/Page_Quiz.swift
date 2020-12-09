//
//  Page_Quiz.swift
//  iStory
//
//  Created by Boulanger Tim on 03/11/2020.
//

import SwiftUI


struct Page_Quiz: View {
    @State var score = 0
    @State var question : Quiz = quiz1
    @State var answerText = "Choisissez une réponse ..."
    @State var answerTextColor = Color.gray
    @State var nextText = ""
    @State var randomQuestion = Int.random(in: 0..<6)
    @State var randomQuestionSave = 0
    @State var backColorA = Color.gray
    @State var backColorB = Color.gray
    @State var backColorC = Color.gray
    @State var backColorD = Color.gray
    
    // Fonction Couleur BackGround Réponse
    func BackReponseColor(RepA : Answer, RepB : Answer, RepC : Answer, RepD : Answer) {
        if RepA.isRight {
            backColorA = .green
        } else {
            backColorA = .red
        }
        if RepB.isRight {
            backColorB = .green
        } else {
            backColorB = .red
        }
        if RepC.isRight {
            backColorC = .green
        } else {
            backColorC = .red
        }
        if RepD.isRight {
            backColorD = .green
        } else {
            backColorD = .red
        }
        
    }
    
    func SuccessVerif (Score : Int){
        if Score >= 10 {
            profil[0].success["10 Score Quiz"] = true
        }
        if Score >= 20 {
            profil[0].success["20 Score Quiz"] = true
        }
        if Score >= 30 {
            profil[0].success["30 Score Quiz"] = true
        }
    }
    
    // Computing Property
    var theQuestionTitle : Question {
        for questionTitle in question.questions {
            if questionTitle.numID == randomQuestion {
                return questionTitle
            }
        }
        return question.questions[0]
    }
    var RepA : Answer {
        for questionAnswer in theQuestionTitle.answers {
            if questionAnswer.numID == 1 {
                return questionAnswer
            }
        }
        return theQuestionTitle.answers[0]
    }
    var RepB : Answer {
        for questionAnswer in theQuestionTitle.answers {
            if questionAnswer.numID == 2 {
                return questionAnswer
            }
        }
        return theQuestionTitle.answers[0]
    }
    var RepC : Answer {
        for questionAnswer in theQuestionTitle.answers {
            if questionAnswer.numID == 3 {
                return questionAnswer
            }
        }
        return theQuestionTitle.answers[0]
    }
    var RepD : Answer {
        for questionAnswer in theQuestionTitle.answers {
            if questionAnswer.numID == 4 {
                return questionAnswer
            }
        }
        return theQuestionTitle.answers[0]
    }
    @State var scale = false
    @State var rotate = false
    var body: some View {
        ScrollView{
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
                    // score et question
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
                    VStack{
                        
                        HStack{
                            Spacer()
                            Button(action: {
                                if RepA.isRight {
                                    answerText = "Bien joué !"
                                    answerTextColor = Color.green
                                    score += 1
                                    nextText = "Suivant"
                                    BackReponseColor(RepA: RepA, RepB: RepB, RepC: RepC, RepD: RepD)
                                    if firstLogin == true {
                                        if score > profil[0].quizScore {
                                            profil[0].quizScore = score
                                        }
                                        SuccessVerif(Score: score)
                                    }
                                    
                                } else {
                                    answerText = "Dommage ..."
                                    answerTextColor = Color.red
                                    nextText = "Recommencer"
                                    score = 0
                                    BackReponseColor(RepA: RepA, RepB: RepB, RepC: RepC, RepD: RepD)
                                }
                            }, label: {
                                Text(RepA.title)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(width: 150, height: 100, alignment: .center)
                                    .background(backColorA)
                                    .cornerRadius(25)
                            })
                            Spacer()
                            Button(action: {
                                if score > profil[0].quizScore {
                                    profil[0].quizScore = score
                                }
                                if RepB.isRight {
                                    answerText = "Bien joué !"
                                    answerTextColor = Color.green
                                    score += 1
                                    nextText = "Suivant"
                                    BackReponseColor(RepA: RepA, RepB: RepB, RepC: RepC, RepD: RepD)
                                    if firstLogin == true {
                                        if score > profil[0].quizScore {
                                            profil[0].quizScore = score
                                        }
                                        SuccessVerif(Score: score)
                                    }
                                } else {
                                    answerText = "Dommage ..."
                                    answerTextColor = Color.red
                                    nextText = "Recommencer"
                                    score = 0
                                    BackReponseColor(RepA: RepA, RepB: RepB, RepC: RepC, RepD: RepD)
                                }
                            }, label: {
                                Text(RepB.title)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(width: 150, height: 100, alignment: .center)
                                    .background(backColorB)
                                    .cornerRadius(25)
                            }).padding()
                        }
                        HStack{
                            Spacer()
                            Button(action: {
                                if RepC.isRight {
                                    answerText = "Bien joué !"
                                    answerTextColor = Color.green
                                    score += 1
                                    nextText = "Suivant"
                                    BackReponseColor(RepA: RepA, RepB: RepB, RepC: RepC, RepD: RepD)
                                    if firstLogin == true {
                                        if score > profil[0].quizScore {
                                            profil[0].quizScore = score
                                        }
                                        SuccessVerif(Score: score)
                                    }
                                } else {
                                    answerText = "Dommage ..."
                                    answerTextColor = Color.red
                                    nextText = "Recommencer"
                                    score = 0
                                    BackReponseColor(RepA: RepA, RepB: RepB, RepC: RepC, RepD: RepD)
                                }
                            }, label: {
                                Text(RepC.title)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(width: 150, height: 100, alignment: .center)
                                    .background(backColorC)
                                    .cornerRadius(25)
                            })
                            Spacer()
                            Button(action: {
                                if RepD.isRight {
                                    answerText = "Bien joué !"
                                    answerTextColor = Color.green
                                    score += 1
                                    nextText = "Suivant"
                                    BackReponseColor(RepA: RepA, RepB: RepB, RepC: RepC, RepD: RepD)
                                    if firstLogin == true {
                                        if score > profil[0].quizScore {
                                            profil[0].quizScore = score
                                        }
                                        SuccessVerif(Score: score)
                                    }
                                } else {
                                    answerText = "Dommage ..."
                                    answerTextColor = Color.red
                                    nextText = "Recommencer"
                                    
                                    score = 0
                                    BackReponseColor(RepA: RepA, RepB: RepB, RepC: RepC, RepD: RepD)
                                }
                            }, label: {
                                Text(RepD.title)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(width: 150, height: 100, alignment: .center)
                                    .background(backColorD)
                                    .cornerRadius(25)
                            }).padding()
                        }
                    }
                    // suite
                    Spacer()
                    
                    Text(answerText)
                        .foregroundColor(answerTextColor)
                        .font(.title)
                    
                    
                    Button(action: {
                        randomQuestionSave = randomQuestion
                        randomQuestion = Int.random(in: 0..<6)
                        while randomQuestion == randomQuestionSave {
                            randomQuestion = Int.random(in: 0..<6)
                        }
                        nextText = ""
                        answerText = "Choisissez une réponse ..."
                        answerTextColor = Color.gray
                        backColorA = .gray
                        backColorB = .gray
                        backColorC = .gray
                        backColorD = .gray
                    }, label: {
                        Text(nextText)
                            .font(.headline)
                            .padding()
                    })
                    Spacer()
                    
                }.navigationBarTitleDisplayMode(.inline)
                .navigationBarTitle("Quiz", displayMode: .inline)
            }
        }
    }
}

struct Page_Quiz_Previews: PreviewProvider {
    static var previews: some View {
        Page_Quiz()
    }
}
