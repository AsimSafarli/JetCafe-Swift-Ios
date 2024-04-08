//
//  HomeViewController.swift
//  JetCafe
//
//  Created by Asim Seferli on 07.04.24.
//

import SwiftUI

struct HomeViewController: View {
    var body: some View {
        ScrollView{
                HomeSpecialOffer()
                HomeCafeView()
            
        }
      
        
    }
}

#Preview {
    HomeViewController()
}
