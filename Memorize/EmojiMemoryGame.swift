//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 汪明杰 on 2022/10/7.
//

import SwiftUI


class EmojiMemoryGame {
    
    static let emojis = ["🛴", "🚲", "🛵", "🏍", "🛺", "🚔", "🚍", "🚘", "🚖", "🚡", "🚃", "🚝", "🚂", "🚆", "🚇", "✈️", "🛫", "🚀", "🛸", "🚁", "⛵️", "🚤", "🚢", "🛳"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
