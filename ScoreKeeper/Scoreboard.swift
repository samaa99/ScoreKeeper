//
//  Scoreboard.swift
//  ScoreKeeper
//
//  Created by Samaa Soltan on 07/10/2025.
//

import Foundation

struct Scoreboard {
    var players: [Player] = [
        Player(name: "Omar", score: 0),
        Player(name: "Ali", score: 0),
    ]
    
    var state = GameState.setup
    
    mutating func resetScores(to newScore: Int) {
        for index in 0..<players.count {
            players[index].score = newScore
        }
    }
}
