//
//  CharacteristicsTableView.swift
//  Spar
//
//  Created by Olzhas Suleimenov on 03.02.2024.
//

import SwiftUI

struct CharacteristicsTableView: View {
    var body: some View {
        VStack {
            Text("Основные характеристики")
                .font(.headline)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
            VStack {
                CharacteristicsTableViewCell(name: "Производство", description: "Россия, Краснодарский край")
                CharacteristicsTableViewCell(name: "Энергетическая ценность, ккал/100г", description: "25 ккал, 105 \n кДж")
                CharacteristicsTableViewCell(name: "Жиры/100г", description: "0,1 г")
                CharacteristicsTableViewCell(name: "Белки/100г", description: "1,3 г")
                CharacteristicsTableViewCell(name: "Углеводы/100г", description: "3,3 г")
            }
        }
    }
}

struct CharacteristicsTableView_Previews: PreviewProvider {
    static var previews: some View {
        CharacteristicsTableView()
    }
}
