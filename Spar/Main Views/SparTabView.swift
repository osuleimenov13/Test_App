//
//  ContentView.swift
//  Spar
//
//  Created by Olzhas Suleimenov on 01.02.2024.
//

import SwiftUI

struct SparTabView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Label {
                        Text("Главная")
                    } icon: {
                        Image("sparlogo")
                            .renderingMode(.template)
                    }
                }
            
            CatalogView()
                .tabItem {
                    Label("Каталог", systemImage: "square.grid.2x2")
                        .environment(\.symbolVariants, .none)
                }
            
            ShoppingCartView()
                .tabItem {
                    Label("Корзина", systemImage: "cart")
                        .environment(\.symbolVariants, .none)
                }
            
            AccountView()
                .tabItem {
                    Label("Профиль", systemImage: "person")
                        .environment(\.symbolVariants, .none)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SparTabView()
    }
}
