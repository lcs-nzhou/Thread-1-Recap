//
//  SwiftUIView.swift
//  HomeApp
//
//  Created by Shuyu Zhou on 2024-01-09.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 100, height: 40)
                .foregroundColor(.gray)
            HStack{
                var icon : Image
            }
        }
    }
}

#Preview {
    SwiftUIView(icon : (UIImage(systemName: "plus")))
}
