//
//  MainView.swift
//  Spar
//
//  Created by Olzhas Suleimenov on 01.02.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            List(0..<3) { _ in
                NavigationLink {
                    ItemDescriptionView(item: Item(imageUrl: ""))
                } label: {
                    HStack {
                        Image("lipa")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Липа")
                            .font(.title2)
                    }
                    
                }
            }
            .navigationTitle("Главная")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
