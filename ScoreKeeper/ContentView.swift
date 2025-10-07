//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by Samaa Soltan on 06/10/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var players: [Player] = [
        Player(name: "Omar", score: 0, color: .orange),
        Player(name: "Ali", score: 0, color: .teal),
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Score Keeper")
                .font(.title)
                .bold()
            
            List {
                Grid {
                    GridRow {
                        Text("Player")
                            .font(.headline)
                        
                        Text("Score")
                            .font(.headline)
                        
                    }
                    .gridColumnAlignment(.leading)
                    .padding(.top)
                    
                    ForEach($players) { $player in
                        GridRow {
                            TextField("Name", text: $player.name)
                                .autocorrectionDisabled(true)
                            
                            Text("\(player.score)")
                                .padding(.trailing, 8)
                                .foregroundStyle(player.color)
                            
                            Stepper("\(player.score)", value: $player.score, in: 0...20)
                                .labelsHidden()
                                
                        }
                    }
                }
                
                Button("Add Player", systemImage: "plus") {
                    players.append(Player(name: "", score: 0, color: .clear))
                }
                
            }
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            HStack {
                Spacer()
                
                Button("Edit") {
                     
                 }
                .buttonStyle(.borderedProminent)
                .font(.headline)
                
                Spacer()

            }
        
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
