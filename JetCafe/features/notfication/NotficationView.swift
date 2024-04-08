//
//  NotficationView.swift
//  JetCafe
//
//  Created by Asim Seferli on 08.04.24.
//

import SwiftUI

import SwiftUI

struct NotficationView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack{
                    ForEach(0...20,id: \.self){
                        post in NotficationCellView()
                    }
                    
                }
            }
            .navigationTitle("Notfication")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NotficationView()
}
