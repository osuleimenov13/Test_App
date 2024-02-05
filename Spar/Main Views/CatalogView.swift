//
//  CatalogView.swift
//  Spar
//
//  Created by Olzhas Suleimenov on 01.02.2024.
//

import SwiftUI

struct CatalogView: View {
    var body: some View {
        NavigationStack {
            Image(systemName: "square.grid.2x2")
                .font(.system(size: 70))
                .foregroundColor(.green)
                .navigationTitle("Каталог")
        }
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}
