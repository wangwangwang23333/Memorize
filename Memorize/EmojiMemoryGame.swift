//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 汪明杰 on 2022/10/7.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🛴", "🚲", "🛵", "🏍", "🛺", "🚔", "🚍", "🚘", "🚖", "🚡", "🚃", "🚝", "🚂", "🚆", "🚇", "✈️", "🛫", "🚀", "🛸", "🚁", "⛵️", "🚤", "🚢", "🛳"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    func choose(_ card: MemoryGame<String>.Card) {
        // in a database, this can be complex. Here it is just one statement.
        model.choose(card)
    }
}
