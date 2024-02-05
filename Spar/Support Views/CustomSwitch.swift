//
//  CustomSwitch.swift
//  Spar
//
//  Created by Olzhas Suleimenov on 02.02.2024.
//

import SwiftUI

struct CustomSwitch: View {
    @State var toggleOnKg = false
    var width: CGFloat = 350
    var height: CGFloat = 35
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: width, height: height)
                .foregroundColor(Color(uiColor: .lightGray).opacity(0.2))
            RoundedRectangle(cornerRadius: 5)
                .frame(width: width/2-2, height: height-4)
                .foregroundColor(.white)
                .offset(x: toggleOnKg ? width/4-1 : -width/4+1)
            
            Text("Шт")
                .fontWeight(toggleOnKg ? .regular : .bold)
                .offset(x: -width/4)
            
            Text("Кг")
                .fontWeight(toggleOnKg ? .bold : .regular)
                .offset(x: width/4)
            
            HStack {
                Rectangle()
                    .fill(.clear)
                    .contentShape(Rectangle())
                    .frame(width: width/2, height: height)
                    .onTapGesture {
                        toggleOnKg = false
                    }
                
                Rectangle()
                    .fill(.clear)
                    .contentShape(Rectangle())
                    .frame(width: width/2, height: height)
                    .onTapGesture {
                        toggleOnKg = true
                    }
            }
        }
        .padding(.horizontal)
        .padding(.bottom, 100)
    }
}

struct CustomSwitch_Previews: PreviewProvider {
    static var previews: some View {
        CustomSwitch()
    }
}
