//
//  ReviewView.swift
//  Spar
//
//  Created by Olzhas Suleimenov on 02.02.2024.
//

import SwiftUI

struct ReviewView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Александр В.")
                .font(.title3)
                .fontWeight(.semibold)
            Text("7 мая 2021")
                .foregroundColor(.secondary)
                .padding(.bottom, 1)
            StarsView(rating: 4)
                .padding(.bottom, 1)
            Text("Хорошая добавка, мне очень понравилась! Хочу чтобы все добавки были такими!")
                .font(.system(size: 15))
        }
        .frame(width: 260, height: 170)
        .background(Color(.systemBackground))
        .cornerRadius(10)
        .shadow(color: Color(uiColor: .lightGray).opacity(0.5), radius: 5)
        .padding(.top)
        .padding(.bottom)
        .padding(.leading)
    }
}

struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView()
    }
}
