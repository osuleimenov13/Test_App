//
//  AccountView.swift
//  Spar
//
//  Created by Olzhas Suleimenov on 01.02.2024.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationStack {
            Image(systemName: "person")
                .font(.system(size: 70))
                .foregroundColor(.green)
                .navigationTitle("Профиль")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
