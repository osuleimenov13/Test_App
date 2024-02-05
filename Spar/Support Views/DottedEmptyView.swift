//
//  DottedEmptyView.swift
//  Spar
//
//  Created by Olzhas Suleimenov on 03.02.2024.
//

import SwiftUI

struct DottedEmptyView: View {
    var fontSize: CGFloat = 15
    var body: some View {
        VStack {
            Text(".....................................................................................")
                .font(.system(size: fontSize))
                .foregroundColor(Color(uiColor: .lightGray))
                .lineLimit(1)
                .frame(minWidth: 50)
        }
    }
}

struct DottedEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        DottedEmptyView()
    }
}
