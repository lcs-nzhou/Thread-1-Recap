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
                .foregroundStyle(.gray)
                .frame(width: 150, height: 80)
            HStack{
                Image(systemName: imageOnTheLeft)
                    .foregroundStyle(.white)
                VStack{
                    Text(firstText)
                        .foregroundStyle(.white)
                    Text(secondText)
                        .foregroundStyle(.white)
                    Text(thirdText)
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    SwiftUIView1(imageOnTheLeft: "door.garage.double.bay.closed", firstText: "Garage", secondText: "Door", thirdText: "Closed")
}
