//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by 汪明杰 on 2022/10/4.
//

import SwiftUI



struct EmojiMemoryGameView: View {
    @ObservedObject var game: EmojiMemoryGame
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                ForEach(game.cards) { card in
                    CardView(card)
                        .aspectRatio(2/3, contentMode: .fit)
                        .onTapGesture {
                            game.choose(card)
                        }
                }
            }
        }
        .foregroundColor(.red)
        .padding(.horizontal)
            
    }
    
}

struct CardView: View {
    private let card: EmojiMemoryGame.Card
    
    init(_ givenCard: EmojiMemoryGame.Card) {
        card = givenCard
    }
    
    var body: some View {
        ZStack { 
            let shape = RoundedRectangle(cornerRadius: 20.0)
            if card.isFaceUp {
                shape
                    .fill()
                    .foregroundColor(.white)
                shape
                    .strokeBorder(lineWidth: 3.0)
                Text(card.content)
                    .font(.largeTitle)
                    .foregroundColor(Color.yellow)
            } else if card.isMathed {
                shape.opacity(0)
            } else {
                shape
                    .fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        EmojiMemoryGameView(game: game)
            .preferredColorScheme(.light)
        EmojiMemoryGameView(game: game)
            .preferredColorScheme(.dark)
    }
}
