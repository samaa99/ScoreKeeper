//
//  Player.swift
//  ScoreKeeper
//
//  Created by Samaa Soltan on 07/10/2025.
//

import Foundation
import SwiftUICore


struct Player: Identifiable {
    var id: UUID = UUID()
    var name: String
    var score: Int = 0
}

extension Player: Equatable {
    static func == (lhs: Player, rhs: Player) -> Bool {
        lhs.name == rhs.name && lhs.score == rhs.score
    }
}
