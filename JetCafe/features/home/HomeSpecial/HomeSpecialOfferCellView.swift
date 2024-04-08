//
//  HomeSpecialOfferCellView.swift
//  JetCafe
//
//  Created by Asim Seferli on 08.04.24.
//

import SwiftUI

struct HomeSpecialOfferCellView: View {
        let title :String
        let image :String

    var body: some View {
        VStack{
            ZStack {
                    Text(title)
                        .fontWeight(.semibold)
                        .font(.headline)
                        .background(.color2)
                        .foregroundColor(.black)
                        .fontWeight(.light)
                        .zIndex(2.0)
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 209)
                    .padding(.leading, 0)
                    .cornerRadius(5.0)
            }
                               
        }
        .padding(16)
    }
           
}

#Preview {
    HomeSpecialOfferCellView(title: "Buy 1,get 1 free", image: "cafee")
}
