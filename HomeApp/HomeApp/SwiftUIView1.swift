//
//  SwiftUIView1.swift
//  HomeApp
//
//  Created by Shuyu Zhou on 2024-01-09.
//

import SwiftUI

struct SwiftUIView1: View {
    let imageOnTheLeft : String
    let firstText : String
    let secondText : String
    let thirdText : String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(Color("DarkerBlue"))
                .frame(width: 175, height: 80)
            HStack{
                Image(systemName: imageOnTheLeft)
                    .foregroundStyle(.mint)
                    .padding(.leading, (30))
                VStack(alignment: .leading){
                    Text(firstText)
                        .foregroundStyle(Color("LighterGray"))
                    Text(secondText)
                        .foregroundStyle(.white)
                        .bold()
                    Text(thirdText)
                        .foregroundStyle(Color("LighterGray"))
                }
                .padding(.leading)
                Spacer()
            }
        }
    }
}

#Preview {
    SwiftUIView1(imageOnTheLeft: "door.garage.double.bay.closed", firstText: "Garage", secondText: "Door", thirdText: "Closed")
}
