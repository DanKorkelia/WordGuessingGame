//
//  Game.swift
//  WordGuessingGame
//
//  Created by Dan Korkelia on 11/01/2018.
//  Copyright © 2018 Ramdan Korkelia. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    var formatedWord: String {
        var guessedWord = ""
        for letterPickedByUser in word {
            if guessedLetters.contains(letterPickedByUser) {
                guessedWord += "\(letterPickedByUser)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
}
