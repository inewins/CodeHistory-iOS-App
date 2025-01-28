//
//  GameViewModel.swift
//  CodeHistory
//
//  Created by Anh Nguyen on 1/26/25.
//

import SwiftUI

// 1
class GameViewModel: ObservableObject {

    @Published private var game = Game()

    var currentQuestion: Question {
        game.currentQuestion
    }

    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }

    var guessWasMade: Bool {
        if game.guesses[currentQuestion] != nil {
            return true
        } else {
            return false
        }
    }

    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuetion(atIndex: index)
    }
    func displayNextScreen() {
        game.updateGameStatus()
    }

    func updatedColor() -> Color {
        if let guessedIndex = game.guesses[currentQuestion] {
            if guessedIndex == currentQuestion.correctAnswerIndex {
                return GameColor.correctGuess
            } else {
                return GameColor.incorrectGuess
            }
        } else {
            return GameColor.main
        }
    }
}
