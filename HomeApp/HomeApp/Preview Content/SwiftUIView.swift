//
//  SwiftUIView.swift
//  HomeApp
//
//  Created by Shuyu Zhou on 2024-01-09.
//

import SwiftUI

struct SwiftUIView: View {
    let firstText : String
    let secondText : String
    let icon : String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 140, height: 50)
                .foregroundColor(.gray)
            HStack{
                Image(systemName: icon)
                    .foregroundStyle(.white)
                VStack(alignment: .leading){
                    Text(firstText)
                        .foregroundStyle(.white)
                    Text(secondText)
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    SwiftUIView(firstText: "Climate", secondText: "16.0-20.5°", icon: "fan.fill")
}
