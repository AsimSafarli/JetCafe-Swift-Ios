//
//  SearchView.swift
//  JetCafe
//
//  Created by Asim Seferli on 08.04.24.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
     var body: some View {
         NavigationStack {
             ScrollView {
                 LazyVStack{
                     ForEach(0...20,id: \.self){
                         post in     SearchCellView(profileImage: "logocafe", profileName: "Fresh Cofe Shop", name: "Tarqovu")
                     }
                     
                 }
                 .searchable(text:$searchText ,prompt: "Search..."  )
             }
             .navigationTitle("Search")
             .navigationBarTitleDisplayMode(.inline)
         }
     }
}

#Preview {
    SearchView()
}
