//
//  ShoppingCartView.swift
//  Spar
//
//  Created by Olzhas Suleimenov on 01.02.2024.
//

import SwiftUI

struct ShoppingCartView: View {
    var body: some View {
        NavigationStack {
            Image(systemName: "cart")
                .font(.system(size: 70))
                .foregroundColor(.green)
                .navigationTitle("Корзина")
        }
    }
}

struct ShoppingCartView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartView()
    }
}
