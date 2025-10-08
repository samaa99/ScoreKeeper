# ScoreKeeper 📊

A feature-rich score tracking app built with SwiftUI for keeping track of game scores with multiple players. Perfect for board games, card games, or any competitive activity!

## Features

- ✨ **Multiple Players**: Add as many players as you need
- 🎮 **Game States**: Setup → Playing → Game Over flow
- 🏆 **Winner Detection**: Automatic crown display for winners
- ⚙️ **Flexible Rules**: 
  - Choose highest or lowest score wins
  - Set starting points (0, 10, or 20)
- ➕➖ **Easy Score Tracking**: Stepper controls for quick score adjustments
- 🔄 **Reset Functionality**: Start new games easily
- 👑 **Visual Feedback**: Crown icon highlights the winner(s)

## What I Learned

Built while following the **Develop in Swift Tutorials**, this project demonstrates:

- Advanced state management with `@State` and `@Binding`
- SwiftUI `Grid` layout for organized data display
- Enum-based state machines (`GameState`)
- Working with arrays and collections
- Custom data models (`Player`, `Scoreboard`)
- Conditional UI rendering based on game state
- View composition and reusable components (`SettingsView`)
- Unit testing with Swift Testing framework
- Material backgrounds and visual polish

## Screenshots

<img width="1179" height="2556" alt="Simulator Screenshot - iPhone 16 - 2025-10-08 at 10 43 50" src="https://github.com/user-attachments/assets/c615e9a4-c257-4a91-96af-db78f94a76b7" />
<img width="1179" height="2556" alt="Simulator Screenshot - iPhone 16 - 2025-10-08 at 10 43 59" src="https://github.com/user-attachments/assets/a6ebe61f-bb4b-45d9-bc97-3c4533636540" />
<img width="1179" height="2556" alt="Simulator Screenshot - iPhone 16 - 2025-10-08 at 10 44 06" src="https://github.com/user-attachments/assets/c9d57c7c-0b66-4be7-b757-87dc6a9ab174" />


## How to Use

1. **Setup**: Enter player names and configure game rules
2. **Add Players**: Tap "Add Player" to include more participants
3. **Start Game**: Hit "Start Game" when ready
4. **Track Scores**: Use steppers to adjust scores during gameplay
5. **End Game**: Tap "End Game" to see the winner(s) with crown icons
6. **Reset**: Start a new game with "Reset Game"

## Requirements

- iOS 17.0+
- Xcode 15.0+
- Swift 5.9+
