//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 汪明杰 on 2022/10/7.
//

import SwiftUI


class EmojiMemoryGame {
    private var model: MemoryGame<String> =
    MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: { index in
            "😄"
        })
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
