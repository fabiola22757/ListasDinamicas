//
//  Game.swift
//  Listas
//
//  Created by win603 on 15/10/25.
//

import Foundation

struct Game : Identifiable {
        
    let id: Int
    let uuid: UUID = UUID() //Agregamos un valor único que asigna un ID único y universal
    let image: String
    let name: String
    let console: String
    let price: Float
}

