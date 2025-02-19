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
    @Published var isGameOver = false

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
        checkIsGameOver()
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

    func checkIsGameOver() {
        isGameOver = game.isOver
    }

    var correctGuesses: Int {
        game.guessCount.correct
    }

    var incorrectGuesses: Int {
        game.guessCount.incorrect
    }
    
    var nextTextColor: Color {
        return guessWasMade ? .white : GameColor.accent
    }
}
