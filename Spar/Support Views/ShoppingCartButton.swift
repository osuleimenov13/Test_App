//
//  ShoppingCartButton.swift
//  Spar
//
//  Created by Olzhas Suleimenov on 02.02.2024.
//

import SwiftUI

struct ShoppingCartButton: View {
    @State var quantity = 1
    let price: Double = 120
    var width: CGFloat = 180
    var height: CGFloat = 60
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: width, height: height)
                .foregroundColor(.green)
            
            HStack {
                Button {
                    if quantity > 0 {
                        quantity -= 1
                    }
                } label: {
                    ZStack {
                        Rectangle()
                            .fill(.clear)
                            .frame(width: height-10, height: height)
                        Image(systemName: "minus")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                }
                
                VStack(alignment: .center) {
                    Text("\(quantity) шт")
                        .fontWeight(.heavy)
                        .lineLimit(1)
                    Text("\(price, specifier: "%.1f") ₽")
                        .fontWeight(.light)
                        .lineLimit(1)
                }
                .foregroundColor(.white)
                .layoutPriority(20)
                
                Button {
                    quantity += 1
                } label: {
                    ZStack {
                        Rectangle()
                            .fill(.clear)
                            .frame(width: height-10, height: height)
                        Image(systemName: "plus")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    
                }
            }
        }
        .frame(width: width)
    }
}

struct ShoppingCartButton_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartButton()
    }
}
