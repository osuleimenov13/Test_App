//
//  PriceAndQuantityView.swift
//  Spar
//
//  Created by Olzhas Suleimenov on 02.02.2024.
//

import SwiftUI

struct PriceAndQuantityView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("55.9")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    Text("₽/kg")
                        .fontWeight(.bold)
                }
                Text("199,0")
                    .fontWeight(.ultraLight)
                    .strikethrough(color: Color(uiColor: .lightGray))
            }
            .padding()
            Spacer()
            ShoppingCartButton()
                .padding()
        }
        .background(.white)
    }
}

struct PriceAndQuantityView_Previews: PreviewProvider {
    static var previews: some View {
        PriceAndQuantityView()
    }
}
