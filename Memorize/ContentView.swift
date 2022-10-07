//
//  ContentView.swift
//  Memorize
//
//  Created by 汪明杰 on 2022/10/4.
//

import SwiftUI



struct ContentView: View {
    let viewModel: EmojiMemoryGame
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                ForEach(viewModel.cards) { card in
                    CardView(card: card)
                        .aspectRatio(2/3, contentMode: .fit)
                        .onTapGesture {
                            viewModel.choose(card)
                        }
                }
            }
        }
        .foregroundColor(.red)
        .padding(.horizontal)
            
    }
    
}

struct CardView: View {
    let card: MemoryGame<String>.Card
    
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
        ContentView(viewModel: game)
            .preferredColorScheme(.light)
        ContentView(viewModel: game)
            .preferredColorScheme(.dark)
    }
}
