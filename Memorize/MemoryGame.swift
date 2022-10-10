//
//  MemoryGame.swift
//  Memorize
//
//  Created by 汪明杰 on 2022/10/6.
//

import Foundation


struct MemoryGame<CardContent> where CardContent: Equatable {
    private(set) var cards: Array<Card>
    
    private var indexOfTheOneAndOnlyFaceUpCard: Int? {
        get {
            // 使用indices的filter函数进行检索
            cards.indices.filter({ cards[$0].isFaceUp }).oneAndOnly
        }
        set {
            cards.indices.forEach({ cards[$0].isFaceUp = ($0 == newValue)})
        }
    }
    
    mutating func choose(_ card: Card) {
        // $0 means the first function parameter
        if let chosenIndex = cards.firstIndex(where: {
            $0.id == card.id
        }),
           // , ===== &&
            !cards[chosenIndex].isFaceUp,
            !cards[chosenIndex].isMathed {
            if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard {
                if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                    cards[chosenIndex].isMathed = true
                    cards[potentialMatchIndex].isMathed = true
                }
                cards[chosenIndex].isFaceUp = true
            } else {
                indexOfTheOneAndOnlyFaceUpCard = chosenIndex
            }
        }
    }
    
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = [] // 类型推断 based on self.cards类型
        // add numberOfPardsOfCards X 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2 + 1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp = true
        var isMathed = false
        let content: CardContent
        let id: Int
    }
}

// 拓展Array
// 查阅文档可知Element是Array使用的
extension Array {
    var oneAndOnly: Element? {
        if self.count == 1 {
            return self.first
        } else {
            return nil
        }
    }
}
