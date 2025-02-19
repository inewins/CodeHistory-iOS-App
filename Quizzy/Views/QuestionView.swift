//
//  QuestionView.swift
//  CodeHistory
//
//  Created by Anh Nguyen on 1/26/25.
//

import SwiftUI

struct QuestionView: View {

    @EnvironmentObject var viewModel: GameViewModel
    let question: Question

    var body: some View {
        VStack(spacing: 0) {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
            VStack {
                ForEach(0..<question.possibleAnswers.count, id: \.self) {
                    answerIndex in
                    Button(
                        action: {
                            print(
                                "Tapped on option with the text: \(question.possibleAnswers[answerIndex])"
                            )
                            viewModel.makeGuess(atIndex: answerIndex)
                        },
                        label: {
                            ChoiceTextView(
                                choiceText: question.possibleAnswers[
                                    answerIndex])
                        }
                    )
                    .disabled(viewModel.guessWasMade)
                    .padding(5)
                }
            }
            .padding(.vertical, 15.0)
            .background(GameColor.main)
            VStack {
                Button(action: {
                    viewModel.displayNextScreen()
                }) {
                    BottomTextView(str: "Next", textColor: viewModel.guessWasMade ? .white : GameColor.main, backgroungColor: viewModel.guessWasMade ? GameColor.accent : GameColor.main)
                }
                .disabled(!viewModel.guessWasMade)
                .transaction { transaction in
                    transaction.animation = nil
                }
                
            }
            .background(GameColor.main)
//            if viewModel.guessWasMade {
//                VStack {
//                    Button(action: {
//                        viewModel.displayNextScreen()
//                    }) {
//                        BottomTextView(str: "Next")
//                    }
//                    
//                }
//                .background(GameColor.main)
//            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
    }
}
