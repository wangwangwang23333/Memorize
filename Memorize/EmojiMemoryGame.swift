//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 汪明杰 on 2022/10/7.
//

import SwiftUI

func makeCardContent(index: Int) -> String {
    return "😄"
}

class EmojiMemoryGame {
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: makeCardContent)
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
