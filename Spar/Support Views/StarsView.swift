//
//  StarsView.swift
//  Spar
//
//  Created by Olzhas Suleimenov on 02.02.2024.
//

import SwiftUI

struct StarsView: View {
    let totalStars = 5
    var rating: Int = 4
    
    init(rating: Int) {
        self.rating = rating
    }
    
    var body: some View {
        HStack {
            ForEach(0..<totalStars, id: \.self) { star in
                Image(systemName: "star.fill")
                    .foregroundColor(star+1 > rating ? .gray : .yellow)
                    .opacity(star+1 > rating ? 0.4 : 1.0)
            }
        }
    }
}

struct StarsView_Previews: PreviewProvider {
    static var previews: some View {
        StarsView(rating: 4)
    }
}
