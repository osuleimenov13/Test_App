//
//  ItemImageView.swift
//  Spar
//
//  Created by Olzhas Suleimenov on 05.02.2024.
//

import SwiftUI

struct ItemImageView: View {
    let item: Item
    let proxy: GeometryProxy
    
    var body: some View {
        AsyncImage(url: URL(string: item.imageUrl)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: proxy.size.width, height: proxy.size.width)
            
        } placeholder: {
            Image("lipa")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: proxy.size.width, height: proxy.size.width)
                .background(Color(.secondaryLabel))
        }
        .overlay(alignment: .topLeading) {
            Text("Цена по карте")
                .foregroundStyle(.white)
                .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                .background(.green)
                .cornerRadius(5)
                .padding()
        }
        .overlay(alignment: .bottomLeading) {
            HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Text("4.1")
                Button {
                    
                } label: {
                    Text("| 19 отзывов")
                        .foregroundColor(Color(uiColor: .lightGray))
                }
            }
            .padding()
        }
        .overlay(alignment: .bottomTrailing) {
            Text("-5%")
                .foregroundColor(.white)
                .padding(2)
                .background(.red)
                .padding()
        }
    }
}

