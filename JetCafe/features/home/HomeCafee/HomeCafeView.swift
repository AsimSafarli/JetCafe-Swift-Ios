//
//  HomeCafeView.swift
//  JetCafe
//
//  Created by Asim Seferli on 08.04.24.
//

import SwiftUI

struct HomeCafeView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Cofe Shop List")
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
                                                HomeCafeCellView(title: "Fress Cafee Shop", image: "cafe", describe: "A coffeehouse, coffee shop, or café is an establishment that primarily serves various types of coffee, espresso, latte, and cappuccino. ", website: false)

                        
                
            
            
            }
      }
}
