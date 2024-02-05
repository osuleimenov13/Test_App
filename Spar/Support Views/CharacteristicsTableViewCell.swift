//
//  CharacteristicsTableViewCell.swift
//  Spar
//
//  Created by Olzhas Suleimenov on 03.02.2024.
//

import SwiftUI

struct CharacteristicsTableViewCell: View {
    var name: String = "Производство"
    var description: String = "Россия, Краснодарский край"
    var fontSize: CGFloat = 15
    
    var body: some View {
        HStack(alignment: .top) {
            Text(name)
                .font(.system(size: fontSize))
                .layoutPriority(1)
            DottedEmptyView(fontSize: fontSize)
            Text(description)
                .font(.system(size: fontSize))
                .layoutPriority(1)
                .multilineTextAlignment(.trailing)
                
        }
        .padding(.horizontal)
        .padding(.vertical, 5)
    }
}

struct CharacteristicsTableViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CharacteristicsTableViewCell()
    }
}
