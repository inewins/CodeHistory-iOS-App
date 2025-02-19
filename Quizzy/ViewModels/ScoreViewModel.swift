//
//  ScoreViewModel.swift
//  CodeHistory
//
//  Created by Anh Nguyen on 1/27/25.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int

    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
