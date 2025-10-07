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
    
    var doesHighestScoreWin: Bool = true
    var winners: [Player] {
        guard state == .gameOver else { return [] }
        var winningScore: Int = 0
        if doesHighestScoreWin {
            winningScore = Int.min
            for player in players {
                winningScore = max(player.score, winningScore)
            }
        } else {
            winningScore = Int.max
            for player in players {
                winningScore = min(player.score, winningScore)
            }
        }
        
        return players.filter { $0.score == winningScore }
    }
    
    
    mutating func resetScores(to newScore: Int) {
        for index in 0..<players.count {
            players[index].score = newScore
        }
    }
}
