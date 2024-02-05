//
//  LeaveReviewButton.swift
//  Spar
//
//  Created by Olzhas Suleimenov on 05.02.2024.
//

import SwiftUI

struct LeaveReviewButton: View {
    var body: some View {
        Button {
            // action to leave review
        } label: {
            Text("Оставить отзыв")
                .foregroundColor(.green)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.green, lineWidth: 2))
        }
        .padding(.horizontal)
        .padding(.bottom)
    }
}

struct LeaveReviewButton_Previews: PreviewProvider {
    static var previews: some View {
        LeaveReviewButton()
    }
}
