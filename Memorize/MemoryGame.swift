//
//  MemoryGame.swift
//  Memorize
//
//  Created by 汪明杰 on 2022/10/6.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    func chooseCard(_ card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMathed: Bool
        var content: CardContent
    }
}
