//
//  MemorizeApp.swift
//  Memorize
//
//  Created by 汪明杰 on 2022/10/4.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
