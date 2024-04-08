//
//  HomeSpecialOffer.swift
//  JetCafe
//
//  Created by Asim Seferli on 08.04.24.
//

import SwiftUI

struct HomeSpecialOffer: View {
    var body: some View {
        VStack{
            HStack{
                Text("Special offers")
                    .font(.title2)
                    .fontWeight(.medium)
                Spacer()
                Button {
                    
                } label: {
                    HStack{
                        Text("View all")
                            .font(.title3)
                            .foregroundColor(.color)
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.color)
                    }
                }
            }
            .padding(.horizontal)
                ScrollView(.horizontal) {
                    LazyHStack {
                            HomeSpecialOfferCellView(title: "Buy 1, get 1 free", image: "cafee")
                        
                    }
                }
            
            
            }
      }
}

