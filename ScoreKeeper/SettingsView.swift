//
//  SettingsView.swift
//  ScoreKeeper
//
//  Created by Samaa Soltan on 07/10/2025.
//

import SwiftUI

struct SettingsView: View {
    @Binding var selectedStartingPoints: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Game Rules")
                .font(.headline)
            
            Divider()
            
            Picker("Starting points", selection: $selectedStartingPoints) {
                Text("0 starting points").tag(0)
                Text("10 Starting points").tag(10)
                Text("20 Starting points").tag(20)
            }
            
        }
        .padding()
        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    @Previewable @State var startingPoints = 10
    SettingsView(selectedStartingPoints: $startingPoints)
}
