//
//  ItemDescriptionView.swift
//  Spar
//
//  Created by Olzhas Suleimenov on 01.02.2024.
//

import SwiftUI

struct ItemDescriptionView: View {
    @Environment (\.presentationMode) private var presentationMode: Binding<PresentationMode>
    let item: Item
    
    var body: some View {
        ZStack {
            GeometryReader { proxy in
                ScrollView {
                    VStack {
                        ItemImageView(item: item, proxy: proxy)
                        
                        Text("Добавка Липа \nк чаю 200 г")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(EdgeInsets(top: 0, leading: 15, bottom: 10, trailing: 10))
                            .font(.title)
                            .fontWeight(.semibold)
                        
                        HStack {
                            Image("spain")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 20, height: 20)
                                .clipShape(Circle())
                            Text("Испания, Риока")
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        
                        VStack {
                            Text("Описание")
                                .font(.headline)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal)
                                .padding(.bottom, 1)
                            Text("Флавоноиды липового цвета обладают противовоспалительным действием, способсвуют укреплению стенки сосудов")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal)
                        }
                        .padding(.bottom)
                        
                        CharacteristicsTableView()
                        
                        HStack {
                            Button {
                                // action to unwrapp all characteristics table
                            } label: {
                                Text("Все характеристики")
                                    .foregroundColor(.green)
                                    .fontWeight(.bold)
                            }
                            Spacer()
                        }
                        .padding()
                        
                        HStack {
                            Text("Отзывы")
                                .font(.title2)
                                .fontWeight(.bold)
                            Spacer()
                            Button {
                                // action to show all reviews
                            } label: {
                                Text("Все 152")
                                    .foregroundColor(.green)
                                    .fontWeight(.bold)
                            }
                        }
                        .padding(.horizontal)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                // iterate over reviews array f.e.
                                ForEach(0..<5, id: \.self) { _ in
                                    ReviewView()
                                }
                            }
                        }
                        
                        VStack {
                            LeaveReviewButton()
                            Divider()
                            CustomSwitch(width: proxy.size.width-40)
                        }
                    }
                }
            }
            
            VStack {
                Spacer()
                PriceAndQuantityView()
            }
        }
        .toolbar {
            Button {
                
            } label: {
                Image(systemName: "doc.plaintext")
                    .fontWeight(.bold)
            }
            
            Button {
                
            } label: {
                Image(systemName: "square.and.arrow.up")
                    .fontWeight(.bold)
            }
            
            Button {
                
            } label: {
                Image(systemName: "heart")
                    .fontWeight(.bold)
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton)
        .navigationBarTitleDisplayMode(.inline)
    }
    
    // navigation back button
    var backButton: some View {
        Button {
            self.presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "arrow.left")
                .fontWeight(.bold)
        }
    }
}

struct ItemDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDescriptionView(item: Item(imageUrl: "some url"))
    }
}
