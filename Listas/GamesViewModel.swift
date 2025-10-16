//
//  GamesViewModel.swift
//  Listas
//
//  Created by win603 on 15/10/25.
//

import Foundation

struct GamesViewModel{
    
    func getGames() -> [Game] {
        
        let games: [Game] = [
            Game(id: 1, image: "mario", name: "Mario Bros Galaxy", console: "Nintendo", price: 1200.00),
            
            Game(id: 2, image: "donkey", name: "The Legend of Zelda Tear of Kingdom", console: "Nintendo", price: 1600.00),
            
            Game(id: 3, image: "peach", name: "Tales of Arise", console: "Playstation 4", price: 2500.00),
            
            Game(id: 4, image: "toad", name: "Halo", console: "Xbox", price: 130.00),
            
            Game(id: 5, image: "yoshi", name: "Sackboy", console: "PS4", price: 130.00)
        ]
        
        return games
    }
}

