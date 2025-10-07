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
            
            
            SettingsView(selectedStartingPoints: $startingPoint, doesHighestScoreWin: $scoreboard.doesHighestScoreWin)
                .disabled(scoreboard.state != .setup)
            
                Grid {
                    GridRow {
                        Text("Player")
                            .font(.headline)
                        
                        Text("Score")
                            .font(.headline)
                            .opacity(scoreboard.state == .setup ? 0 : 1.0)
                        
                    }
                    .gridColumnAlignment(.leading)
                    .padding(.top)
                    
                    ForEach($scoreboard.players) { $player in
                        GridRow {
                            
                            HStack {
                                if scoreboard.winners.contains(player)  {
                                    Image(systemName: "crown.fill")
                                        .foregroundStyle(.yellow)
                                }
                                
                                TextField("Name", text: $player.name)
                                    .autocorrectionDisabled(true)
                            }
                            
                            
                            Text("\(player.score)")
                                .padding(.trailing, 8)
                                .opacity(scoreboard.state == .setup ? 0 : 1.0)
                            
                            Stepper("\(player.score)", value: $player.score, in: 0...20)
                                .labelsHidden()
                                .opacity(scoreboard.state == .setup ? 0 : 1.0)
                        }
                    }
                }
                
                Button("Add Player", systemImage: "plus") {
                    scoreboard.players.append(Player(name: "", score: 0))
                }
                .opacity(scoreboard.state == .setup ? 1.0 : 0)
            
            Spacer()
            
            HStack {
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
                
                Spacer()
            }
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            .tint(.blue)
        
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
