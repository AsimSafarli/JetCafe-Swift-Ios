//
//  SearchCellView.swift
//  JetCafe
//
//  Created by Asim Seferli on 08.04.24.
//

import SwiftUI
struct SearchCellView: View {
    let profileImage : String
    let profileName:String
    let name:String
    var body: some View {
        
        HStack{
            Image(profileImage)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 80,height: 80)
            VStack(alignment:.leading){
                Text(profileName)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text(name)
                    .font(.headline)
                    .foregroundStyle(.gray)
                    .fontWeight(.medium)
            }
            Spacer()
            
            
        }
        .padding(.horizontal)
    }
}


