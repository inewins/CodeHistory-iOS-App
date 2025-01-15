//
//  ContentView.swift
//  CodeHistory
//
//  Created by Anh Nguyen on 12/22/24.
//

import SwiftUI

struct ContentView: View {
    let mainColor = Color(red: 20 / 255, green: 28 / 255, blue: 58 / 255)
    let accentColor = Color(red: 48 / 255, green: 105 / 255, blue: 240 / 255)

    let question = Question(
        questionText: "What is Michelle's favorite food?",
        possibleAnswers: [
            "Springrolls", "Pho", "Korean BBQ", "Shrimp Fried Rice",
        ],
        correctAnswerIndex: 0)
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                Text("1/10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()

                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(
                            action: {
                                print("Tapped on Choice 1")
                            },
                            label: {
                                ChoiceTextView(
                                    choiceText: question.possibleAnswers[0])
                            })
                        Spacer()
                            .frame(width: 1)
                        Button(
                            action: {
                                print("Tapped on Choice 2")
                            },
                            label: {
                                ChoiceTextView(
                                    choiceText: question.possibleAnswers[1])
                            })
                        Spacer()
                    }
                    .multilineTextAlignment(.center)
                    HStack {
                        Spacer()
                        Button(
                            action: {
                                print("Tapped on Choice 3")
                            },
                            label: {
                                ChoiceTextView(
                                    choiceText: question.possibleAnswers[2])
                            })
                        Spacer()
                            .frame(width: 1)
                        Button(
                            action: {
                                print("Tapped on Choice 4")
                            },
                            label: {
                                ChoiceTextView(
                                    choiceText: question.possibleAnswers[3])
                            })
                        Spacer()
                    }
                    Spacer()
                        .frame(height: 20)
                }

            }
        }
        .foregroundColor(.white)
    }
}

#Preview {
    ContentView()
}
