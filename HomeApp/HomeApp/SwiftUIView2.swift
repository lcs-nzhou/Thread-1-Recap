//
//  SwiftUIView2.swift
//  HomeApp
//
//  Created by Shuyu Zhou on 2024-01-09.
//

import SwiftUI

struct SwiftUIView2: View {
    let imageOnTheLeft : String
    let firstText : String
    let secondText : String
    let backgroundColor : Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(backgroundColor)
                .frame(width: 175, height: 60)
            HStack{
                Image(systemName: imageOnTheLeft)
                    .foregroundStyle(.white)
                    .padding(.leading, (30))
                VStack(alignment: .leading){
                    Text(firstText)
                        .foregroundStyle(.white)
                    Text(secondText)
                        .foregroundStyle(.white)
                    
                }
                .padding()
                Spacer()
            }
        }
    }
}

#Preview {
    SwiftUIView2(imageOnTheLeft: "lock.fill", firstText: "Network", secondText: "On", backgroundColor: .gray)
}
