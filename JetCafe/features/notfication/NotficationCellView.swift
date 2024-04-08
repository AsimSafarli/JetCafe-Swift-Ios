//
//  NotficationCellView.swift
//  JetCafe
//
//  Created by Asim Seferli on 08.04.24.
//

import SwiftUI
struct NotficationCellView: View {
    var body: some View {
        
        HStack(alignment:.top){
            Image("latte")
                .resizable()
                .scaledToFit()
                .frame(width: 70,height: 70)
                .background(.color2)
                .padding(.horizontal,8)
            VStack(alignment:.leading){
                Text("Your order “Cappuccino” is being delivered to your place.")
                    .font(.subheadline)
                    .fontWeight(.medium)
                Text("08:12 AM")
                    .fontWeight(.regular)
                    .font(.footnote)
                    .foregroundColor(.black)
            }
      
            Spacer()
        }
        .padding(.horizontal)
    }
}

