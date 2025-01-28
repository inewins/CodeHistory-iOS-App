//
//  Question.swift
//  CodeHistory
//
//  Created by Anh Nguyen on 1/14/25.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int

    static var allQuestions = [
        Question(
            questionText: "What color is Peanut?",
            possibleAnswers: [
                "Orange",
                "Grey",
                "Brown",
                "Black",
            ],
            correctAnswerIndex: 1),
        Question(
            questionText: "Chewy has surgery on her right ear?",
            possibleAnswers: [
                "True",
                "False",
            ],
            correctAnswerIndex: 1),
        Question(
            questionText: "What is Michelle's favorite food?",
            possibleAnswers: [
                "Springrolls",
                "Pho",
                "Korean BBQ",
                "Shrimp Fried Rice",
            ],
            correctAnswerIndex: 0),
        Question(
            questionText: "Where was Chewy born?",
            possibleAnswers: [
                "Arlington",
                "Austin",
                "Dallas",
                "Houston",
            ],
            correctAnswerIndex: 3),
        Question(
            questionText: "What Percent of the world's population lives in the northen hemisphere?",
            possibleAnswers: [
                "60%",
                "70%",
                "80%",
                "90%",
            ],
            correctAnswerIndex: 3),
        Question(
            questionText: "Avocados are ...",
            possibleAnswers: [
                "Fruits",
                "Vegetables",
            ],
            correctAnswerIndex: 0),
        Question(
            questionText: "What company makes the Xperia model of smartphone?",
            possibleAnswers: [
                "Samsung",
                "Sony",
                "Nokia",
                "Google",
            ],
            correctAnswerIndex: 1),
        Question(
            questionText: "What spirit is used in making a Tom Collins?",
            possibleAnswers: [
                "Vodka",
                "Rum",
                "Gin",
                "Tequila",
            ],
            correctAnswerIndex: 2),
        Question(
            questionText: "What is the longest-running Broadway show ever?",
            possibleAnswers: [
                "Les Miserable",
                "The Lion King",
                "The Phantom of the Opera",
            ],
            correctAnswerIndex: 2),
        Question(
            questionText: "What is a group of cats called?",
            possibleAnswers: [
                "A clowder",
                "A cuddle",
                "A chaos",
                "A gaggle",
            ],
            correctAnswerIndex: 0),
    ]
}
