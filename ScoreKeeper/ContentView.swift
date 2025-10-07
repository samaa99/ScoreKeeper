//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by Samaa Soltan on 06/10/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var scoreboard = Scoreboard()
    @State private var startingPoint: Int = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Score Keeper")
                .font(.title)
                .bold()
            
            
            SettingsView(selectedStartingPoints: $startingPoint)
            
                Grid {
                    GridRow {
                        Text("Player")
                            .font(.headline)
                        
                        Text("Score")
                            .font(.headline)
                        
                    }
                    .gridColumnAlignment(.leading)
                    .padding(.top)
                    
                    ForEach($scoreboard.players) { $player in
                        GridRow {
                            TextField("Name", text: $player.name)
                                .autocorrectionDisabled(true)
                            
                            Text("\(player.score)")
                                .padding(.trailing, 8)
//                                .foregroundStyle(player.color)
                            
                            Stepper("\(player.score)", value: $player.score, in: 0...20)
                                .labelsHidden()
                                
                        }
                    }
                }
                
                Button("Add Player", systemImage: "plus") {
                    scoreboard.players.append(Player(name: "", score: 0))
                }
            
            Spacer()
            
            switch scoreboard.state {
             case .setup:
                Button("Start Game", systemImage: "play.fill") {
                    scoreboard.state = .playing
                    scoreboard.resetScores(to: startingPoint)
                }
            case .playing:
               Button("End Game", systemImage: "stop.fill") {
                   scoreboard.state = .gameOver
               }
            case .gameOver:
               Button("Reset Game", systemImage: "arrow.counterclockwise") {
                   scoreboard.state = .setup
               }
            }
        
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
