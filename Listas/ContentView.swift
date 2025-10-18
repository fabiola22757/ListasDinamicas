//
//  ContentView.swift
//  Listas
//
//  Created by win603 on 15/10/25.
//

import SwiftUI

struct ContentView: View {
    //Inicializar lista de juegos
    @State var gameVM : [Game] = GamesViewModel().getGames()
    //O TAMBIÉN PUEDE SER:let listGames: [Game] = GamesViewModel().getGames() ES LO MISMO
    
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                ForEach(gameVM, id: \.uuid) { game in
                    VStack{ //LazyVStack
                        
                        CardView(image: game.image, name: game.name, console: game.console, price: String(game.price))
                            .padding(.trailing)
                            .background(Color("cardColor"))
                            .cornerRadius(15)
                            .padding(4)
                            .listRowInsets(EdgeInsets()) //agregado
                    }
                }.onDelete { (indexSet) in
                    self.gameVM.remove(atOffsets: indexSet)
                } //agregado

            }.listStyle(PlainListStyle()) //agregado
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
