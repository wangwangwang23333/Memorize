//
//  MemoryGame.swift
//  Memorize
//
//  Created by 汪明杰 on 2022/10/6.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    mutating func choose(_ card: Card) {
        // $0 means the first function parameter
        if let chosenIndex = cards.firstIndex(where: {
            $0.id == card.id
        }) {
            cards[chosenIndex].isFaceUp.toggle()
        }
    }
    
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        // add numberOfPardsOfCards X 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2 + 1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = false
        var isMathed: Bool = false
        var content: CardContent
        var id: Int
    }
}
