//
//  ScoreKeeperTests.swift
//  ScoreKeeperTests
//
//  Created by Samaa Soltan on 07/10/2025.
//

import Testing
@testable import ScoreKeeper

struct ScoreKeeperTests {

    @Test("Reset player scores", arguments: [1, 10, 100])
    func example(initialScore: Int) async throws {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
        var scoreboard = Scoreboard(players: [
            Player(name: "Elisha", score: 0),
            Player(name: "Andre", score: 5),
        ])
        
        scoreboard.resetScores(to: initialScore)
        
        for player in scoreboard.players {
            #expect(player.score == initialScore)
        }
        
        
        
    }

}
